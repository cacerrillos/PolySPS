<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

function get_registrations_by_id($mysqli, $viewer_id) {
  $data = array();
  
  if($stmt = $mysqli -> prepare("SELECT `registrations`.`presentation`, `presentations`.`date`, `presentations`.`block_id` FROM `registrations` JOIN `presentations` ON `registrations`.`presentation` = `presentations`.`presentation_id` WHERE `registrations`.`viewer` = ?;")) {
    $stmt->bind_param("i", $viewer_id);
    $stmt->execute();
    $stmt->bind_result($presentation_id, $date, $block_id);
    while($stmt->fetch()) {
      $arr = array();
      $arr['presentation_id'] = $presentation_id;
      $arr['viewer_id'] = intval($viewer_id);
      $arr['date'] = intval($date);
      $arr['block_id'] = intval($block_id);
      array_push($data, $arr);
      
    }
    $stmt->close();
  } else {
    //$response->getBody()->write($mysqli->error);
  }
  return $data;
}

$app->get('/registrations/distinct', function(Request $request, Response $response) {
  $status = array();
  if($stmt = $this->db->prepare("SELECT DISTINCT `date`, `block_id` FROM `presentations`;")) {
    $stmt->execute();

    $stmt->store_result();
    $status['distinct'] = $stmt->num_rows;
  }
  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});

$app->get('/registrations/finish', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
      session_destroy();
      session_start();
      $status['status'] = true;
  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});

$app->post('/registrations/begin', function (Request $request, Response $response) {
  $status = array();
  $status['status'] = false;

  $post_data = $request->getParsedBody();
  if(isset($post_data['first_name']) && isset($post_data['last_name']) && isset($post_data['grade_id']) && isset($post_data['house_id'])) {
    if(can_register(intval($post_data['grade_id']))) {
      if(isset($post_data['presentation_id']) && $post_data['grade_id'] == 2) {
        $status['senior'] = true;
        //is senior, attempt to claim accooint
        $pres = GetPresentation($this->db, $post_data['presentation_id']);
        if($pres) {
          if(!$pres->claimed) {
            if($stmt = $this->db->prepare("UPDATE `presentations` SET `claimed` = '1' WHERE `presentations`.`presentation_id` = ? LIMIT 1;")) {
              $stmt->bind_param("i", $pres->presentation_id);
              if($stmt->execute()) {
                if($stmt->affected_rows == 1) {
                  $stmt->close();
                  $id = -1;
                  if($stmt = $this->db->prepare("INSERT INTO `viewers` (`viewer_id`, `first_name`, `last_name`, `email`, `house_id`, `grade_id`) VALUES (NULL, ?, ?, '', ?, ?);")) {
                    $stmt->bind_param("ssii", trim($post_data['first_name']), trim($post_data['last_name']), $post_data['house_id'], $post_data['grade_id']);
                    if($stmt->execute()) {
                      $id = $stmt->insert_id;
                      $status['status'] = true;
                      $_SESSION['viewer_id'] = $id;
                      $stmt->close();

                      if($stmt = $this->db->prepare("INSERT INTO `registrations` (`presentation`, `viewer`, `timestamp`, `date`, `block_id`) VALUES (?, ?, ?, ? ,?);")) {
                        $t  = time();
                        $stmt->bind_param("iiiii", $pres->presentation_id, $id, $t, $pres->date, $pres->block_id);
                        if($stmt->execute())  {
                          $mysqli_status = $mysqli_status && $stmt->affected_rows > 0;
                          $status['status'] = $stmt->affected_rows > 0;
                        } else{
                          $response['my'] = $this->db->error;
                          $mysqli_status = false;
                        }
                       
                        $stmt->close();
                      } else {
                        echo $this->db->error;
                      }

                    } else {
                      $stmt->close();
                    }
                    //$stmt->close();
                  } else {
                    $status['inserterror'] = $this->db->error;
                  }

                  $status['senior'] = false;
                  $status['pid'] = isset($post_data['presentation_id']);
                  $status['gdid'] = $post_data['grade_id'] == 1;
                } else {
                  $stmt->close();
                  $status['failedtoclaim'] = true;

                }
              }
            } else {
              $status['claimedupdatederror'] = $this->db->error;
            }

          } else {
            $status['claimed'] = true;
          }
        } else {
          $status['nopres'] = true;
        }
      } else {
        $id = -1;
        if($stmt = $this->db->prepare("INSERT INTO `viewers` (`viewer_id`, `first_name`, `last_name`, `email`, `house_id`, `grade_id`) VALUES (NULL, ?, ?, '', ?, ?);")) {
          $stmt->bind_param("ssii", trim($post_data['first_name']), trim($post_data['last_name']), $post_data['house_id'], $post_data['grade_id']);
          if($stmt->execute()) {
            $id = $stmt->insert_id;
            $status['status'] = true;
            $_SESSION['viewer_id'] = $id;
          }
          $stmt->close();
        } else {
          $status['inserterror'] = $this->db->error;
        }

        $status['senior'] = false;
        $status['pid'] = isset($post_data['presentation_id']);
        $status['gdid'] = $post_data['grade_id'] == 1;
      }
    } else {
      $status['notenabled'] = true;
    }
    
  } else {
    $status['missingvars'] = true;
  }
  
  $status['in'] = $post_data;

  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});

$app->post('/registrations/', function (Request $request, Response $response) {
  $post_data = $request->getParsedBody();
  $status = array();
  $status['status'] = true;
  $mysqli_status = true;
  $entered = false;
  if(isset($post_data['presentation_id'])  && isset($post_data['viewer_id'])) {
    
    $pres = GetPresentation($this->db, $post_data['presentation_id']);
    $viewer = GetViewer($this->db, $post_data['viewer_id']);
    $limits = GetLimits($this->db, $post_data['presentation_id'], true);
    if($pres && $viewer  && $limits) {
      $entered = true;

      $claimed_modif = (!$pres->claimed && $viewer->grade_id == 2) ? 1 : 0; //not sure if this works
      $status['c'] = $pres->claimed;
      $status['gid'] = $viewer->grade_id;
      $status['stmt'] = !$pres->claimed && $viewer->grade_id == 2;
      if($limits[$viewer->grade_id]->total < $limits[$viewer->grade_id]->amount - $claimed_modif) {
        if($stmt = $this->db->prepare("LOCK TABLE `registrations` WRITE;")) {
          $stmt->execute();
          $stmt->close();
        } else {
          $status['erur'] = $this->db->error;
        }
        if($stmt = $this->db->prepare("DELETE FROM `registrations` WHERE `registrations`.`date` = ? AND `registrations`.`block_id` = ? AND `registrations`.`viewer` = ? LIMIT 1;")) {
          $stmt->bind_param("iii", $pres->date, $pres->block_id, $post_data['viewer_id']);
          $stmt->execute();
          $stmt->close();
        } else {
          echo $this->db->error;
        }
        if($stmt = $this->db->prepare("INSERT INTO `registrations` (`presentation`, `viewer`, `timestamp`, `date`, `block_id`) VALUES (?, ?, ?, ? ,?);")) {
          $t  = time();
          $stmt->bind_param("iiiii", $post_data['presentation_id'], $post_data['viewer_id'], $t, $pres->date, $pres->block_id);
          if($stmt->execute())  {
            $mysqli_status = $mysqli_status && $stmt->affected_rows > 0;
          } else{
            $response['my'] = $this->db->error;
            $mysqli_status = false;
          }
         
          $stmt->close();
        } else {
          echo $this->db->error;
        }
        if($stmt = $this->db->prepare("UNLOCK TABLES;")) {
          $stmt->execute();
          $stmt->close();
        } else {
          $status['erur2'] = $this->db->error;
        }
      } else {
        $status['status'] = false;
        $status['notenoughroom']= true;
        //fail not enough room
      }
      

    } else {
      $mysqli_status = false;
    }
  }
  $status['status']  =  $status['status'] && $mysqli_status && $entered;

  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});

$app->get('/registrations/me', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  if(isset($_SESSION['viewer_id'])) {
    $data = get_registrations_by_id($this->db, $_SESSION['viewer_id']);
    if($data) {
      $status = $data;
    }
    //$status['status'] = true;
    //$status['viewer_id'] = $_SESSION['viewer_id'];
  }
  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});

$app->get('/registrations/{viewer_id}', function (Request $request, Response $response) {
  $data = get_registrations_by_id($this->db, $request->getAttribute('viewer_id'));
  $response->getBody()->write(json_encode($data, JSON_PRETTY_PRINT));
  return $response;
});
/*
$app->post('/registrations/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  $post_data = $request->getParsedBody();
  if(isset($post_data['house_name'])) {
    //var_dump($all_gl);
    $mysqli = $this->db;

    if($stmt = $mysqli->prepare("INSERT INTO `houses` (`house_id`, `house_name`) VALUES (NULL, ?);")) {
      $stmt->bind_param("s", $post_data['house_name']);
      $stmt->execute();
      if($stmt->affected_rows == 1) {
        $status['status'] = true;
      }
      $stmt->close();
    } else {
      echo $mysqli->error;
    }
  }
  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});
*/
$app->put('/registrations/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  $post_data = $request->getParsedBody();
  //try to save data
  if(isset($post_data['house_id'])) {
    $mysqli = $this->db;
    $old_data = GetLocation($mysqli, intval($post_data['house_id']));
    if($old_data->house_id == intval($post_data['house_id'])) {
      $house_name = isset($post_data['house_name']) ? $post_data['house_name'] : $old_data->house_name;

      if($stmt = $mysqli->prepare("UPDATE `houses` SET `house_name` = ? WHERE `houses`.`house_id` = ? LIMIT 1;")) {
        $stmt->bind_param("si", $house_name, $post_data['house_id']);
        $stmt->execute();
        if($stmt->affected_rows == 1) {
          $status['status'] = true;
        }
        $stmt->close();
      } else {
        echo $mysqli->error;
      }
    }
  }
  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});

$app->delete('/registrations/', function (Request $request, Response $response) {
  $resp = array();
  $resp['status'] = false;
  $post_data = $request->getParsedBody();
    $mysqli = $this->db;
  foreach ($post_data as $key => $value) {
    if($stmt = $mysqli->prepare("DELETE FROM `houses` WHERE `house_id` = ?;")) {
      $stmt->bind_param("i", $value['house_id']);
      $stmt->execute();
      if($stmt->affected_rows > 0) {
        $resp['status'] = true;
      }
      $stmt->close();
    } else {
      echo $mysqli->error;
    }
  }
  $response->getBody()->write(json_encode($resp, JSON_PRETTY_PRINT));
  return $response;
});


?>
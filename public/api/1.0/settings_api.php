<?

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class Setting {
  public $entry_key;
  public $entry_value;
  public function __construct($entry_key, $entry_value) {
    $this->entry_key = $entry_key;
    $this->entry_value = $entry_value;
  }
}

function GetSetting($mysqli, $entry_key) {
  $data = null;

  if($stmt = $mysqli -> prepare("SELECT `entry_value` FROM `settings` WHERE `entry_key` = ? LIMIT 1;")) {
    $stmt->bind_param("s", $entry_key);
    $stmt->execute();
    $stmt->bind_result($entry_value);
    while($stmt->fetch()) {
      $data = new Setting($entry_key, $entry_value);
    }
    $stmt->close();
  } else {
    echo $mysqli->error;
  }
  return $data;
}

$app->get('/settings/', function (Request $request, Response $response) {
  $data = array();
  $mysqli = $this->db;
  
  if($stmt = $mysqli -> prepare("SELECT `entry_key`, `entry_value` FROM `settings`;")) {
    $stmt->execute();
    $stmt->bind_result($entry_key, $entry_value);
    while($stmt->fetch()) {
      $data[$entry_key] = new Setting($entry_key, $entry_value);
    }
    $stmt->close();
  } else {
    echo $mysqli->error;
  }
  $response->getBody()->write(json_encode($data, JSON_PRETTY_PRINT));
  return $response;
});

$app->get('/settings/{entry_key}', function (Request $request, Response $response) {
  $data = GetSetting($this->db, $request->getAttribute('entry_key'));
  $response->getBody()->write(json_encode($data, JSON_PRETTY_PRINT));

  return $response;
});

$app->post('/settings/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  if($this->is_admin) {
    $post_data = $request->getParsedBody();
    if(isset($post_data['entry_key']) && isset($post_data['entry_value'])) {
      //var_dump($all_gl);
      $mysqli = $this->db;

      if($stmt = $mysqli->prepare("INSERT INTO `settings` (`entry_key`, `entry_value`) VALUES (?, ?);")) {
        $stmt->bind_param("ss", $post_data['entry_key'], $post_data['entry_value']);
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

$app->put('/settings/{entry_key}', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  if($this->is_admin) {
    $post_data = $request->getParsedBody();
    //try to save data
    $entry_key = $request->getAttribute('entry_key');
    if($entry_key && isset($post_data['entry_value'])) {
      $mysqli = $this->db;
      if($stmt = $mysqli->prepare("UPDATE `settings` SET `entry_value` = ? WHERE `settings`.`entry_key` = ? LIMIT 1;")) {
        $stmt->bind_param("ss", $post_data['entry_value'], $entry_key);
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

$app->put('/settings/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  if($this->is_admin) {
    $post_data = $request->getParsedBody();
    //try to save data
    if(isset($post_data['entry_key']) && isset($post_data['entry_value'])) {
      $mysqli = $this->db;
      if($stmt = $mysqli->prepare("UPDATE `settings` SET `entry_value` = ? WHERE `settings`.`entry_key` = ? LIMIT 1;")) {
        $stmt->bind_param("ss", $post_data['entry_value'], $post_data['entry_key']);
        $stmt->execute();
        if($stmt->affected_rows == 1) {
          $status['status'] = true;
        }
        $stmt->close();
      } else {
        echo $mysqli->error;
      }
    }
  } else {
    $status['notadmin'] = true;
  }
  
  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});

?>
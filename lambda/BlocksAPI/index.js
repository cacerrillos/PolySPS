
var debug = true;

var connection_secrets;

if(!debug) {
  var fs = require('fs');
  var AWS = require('aws-sdk');
  var kms = new AWS.KMS({region:'us-east-1'});

  var secretPath = './db-secrets';
  var encryptedSecret = fs.readFileSync(secretPath);

  var params = {
    CiphertextBlob: encryptedSecret
  };

  kms.decrypt(params, function(err, data) {
    if (err) {
      console.log(err, err.stack)
    } else {
      connection_secrets = JSON.parse(data['Plaintext'].toString());
    }
  });
  
} else {
  connection_secrets = {
    host     : '192.168.0.42',
    port     : '23306',
    user     : 'root',
    password : '...',
    database : 'polysps'
  };
}

var mysql      = require('mysql');
var connection = mysql.createConnection(connection_secrets);

// Object models

class Block {
  constructor(block_id, block_name) {
    this.block_id = block_id;
    this.block_name = block_name;
  }
}

//Functions

var GetBlocks = function(mysqli) {
  var out = [];
  mysqli.query('SELECT `block_id`, `block_name` FROM `blocks`;', function(err, rows, fields) {
    if(!err) {
      console.log(rows);
      for(var x = 0; x < rows.length; x++) {
        // ...
      }
    } else {
      console.log(err);
    }
  });
  return out;
};


//Lambda handler

exports.myHandler = function(event, context, callback) {
  //console.log("value1 = " + event.key1);
  //console.log("value2 = " + event.key2);

  connection.connect(function(err){
  if(!err) {
      console.log("Database is connected ... nn");
  } else {
      console.log("Error connecting database ... nn");
  }
  });

  console.log(GetBlocks(connection));

  connection.query('SELECT * from test', function(err, rows, fields) {
    if (!err)
      console.log('The solution is: ', rows);
    else
      console.log('Error while performing Query.');
  });  

  connection.end();

  callback(null, "some success message");
  // or 
  // callback("some error type"); 
}




'use strict';

var AWS = require("aws-sdk");

AWS.config.update({
  region: "us-east-1"
});

var _House = require('./houses');

//Lambda handler

exports.handler = function(event, context, callback) {

  var ddb = new AWS.DynamoDB.DocumentClient();

  var House = new _House();

   House.GetHouses(ddb, function(data) {
    if(data) {

      callback(null, JSON.stringify(data));
      return;
    } else {

    }
  });
}




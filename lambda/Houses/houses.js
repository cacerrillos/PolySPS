'use strict';

module.exports = class House {
  constructor(house_id, house_name) {
    this.house_id = house_id;
    this.house_name = house_name;
  }
  GetHouses(ddb, callback) {
    var params = {
      TableName: "PolySPS_Houses"
    };

    ddb.scan(params, function(err, data) {
      if (err) {
        console.error("Unable to read item. Error JSON:", JSON.stringify(err, null, 2));
        callback(err);
      } else {
        var result = {};
        for(var k in data.Items) {
          var item = data.Items[k];
          if(!data.Items.hasOwnProperty(k)) continue;

          result[item.house_id] = new House(item.house_id, item.house_name);
        }

        callback(result);
      }
    });
  }
};

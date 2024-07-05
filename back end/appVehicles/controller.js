'use strict';

var response = require('./res');
var connection = require('./koneksi');

exports.index = function (req, res) {
    response.ok("Silahkan Login!", res)
};


exports.tampil = function (req, res) {
    connection.query('SELECT * FROM vehicle_brand', function (error, rows, fileds) {
        if (error) {
            console.log(error);
        } else {
            response.ok(rows, res)
        }
    });
};

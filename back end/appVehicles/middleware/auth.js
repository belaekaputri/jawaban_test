var connection = require('../koneksi');
var mysql = require('mysql');
var md5 = require('md5');
var response = require('../res');
var jwt = require('jsonwebtoken');
var config = require('../config/secret');
var ip = require('ip');


exports.registrasi = function (req, res) {
     var post = {
          name: req.body.name,
          email: req.body.email,
          password: md5(req.body.password),
          is_admin:  req.body.is_admin,
          created_at: new Date(),
          updated_at: new Date()
     }

     var query = "SELECT email FROM ?? WHERE ??=?";
     var table = ["users", "email", post.email];

     query = mysql.format(query, table);

     connection.query(query, function (error, rows) {
          if (error) {
               console.log(error);
          }else {
               if(rows.length == 0){
                   var query = "INSERT INTO ?? SET ?";
                   var table = ["users"];
                   query = mysql.format(query, table);
                   connection.query(query, post, function(error, rows){
                       if(error){
                           console.log(error);
                       }else {
                           response.ok("Berhasil menambahkan data user baru", res);
                       }
                   });
               }else {
                   response.ok("Email sudah terdaftar!",res);
               }
           }
       })
}


exports.login = function (req, res) {
     var post = {
          password: req.body.password,
          email: req.body.email
     }

     var query = "SELECT * FROM ?? WHERE ??=? AND ??=?";
     var table = ["users", "password", md5(post.password), "email", post.email];

     query = mysql.format(query, table);

     connection.query(query, function (error, rows) {
          if (error) {
               console.log(error);
          } else {
               if (rows.length == 1) {
                    var token = jwt.sign({ rows }, config.secret, {
                         expiresIn: '2400000'
                    });

                    id_user = rows[0].id;
                    name = rows[0].name;
                    is_admin = rows[0].is_admin;
                    var expired = 2400000
                
                    var data = {
                         id_user: id_user,
                         access_token: token,
                         ip_address: ip.address()
                    }

                    var query = "INSERT INTO ?? SET ?";
                    var table = ["akses_token"];

                    query = mysql.format(query, table);
                    connection.query(query, data, function (error, rows) {
                         if (error) {
                              console.log(error);
                         } else {
                              res.json({
                                   success: true,
                                   message: 'Token JWT tergenerate!',
                                   token: token,
                                   expires: expired,
                                   currUser: data.id_user,
                                   user: name,
                                   is_admin: is_admin,
                              });
                         }
                    });
               }
               else {
                    res.json({ "Error": true, "Message": "Email atau password salah!" });
               }
          }
     });
}

exports.halamanrahasia = function (req, res) {
     response.ok("Halaman ini hanya untuk admin", res);
}

exports.addbrand= function (req, res) {
    var name = req.body.name;

    connection.query('INSERT INTO vehicle_brand (name) VALUES(?)',
        [name],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Menambahkan Data!", res)
            }
        });
};
exports.editbrand = function (req, res) {
    var id = req.body.id;
    var name = req.body.name;
    connection.query('UPDATE vehicle_brand SET name=? WHERE id=?', [name],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Ubah Data", res)
            }
        });
}


exports.adminmahasiswa = function (req, res) {
     connection.query('SELECT * FROM mahasiswa', function (error, rows, fileds) {
          if (error) {
               console.log(error);
          } else {
               response.ok(rows, res)
          }
     });
};
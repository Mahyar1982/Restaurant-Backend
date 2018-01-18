var promise = require('bluebird');

var options = {
  // Initialization Options
  promiseLib: promise
};

var pgp = require('pg-promise')(options);
var connectionString = process.env.DATABASE_URL || 'postgres://postgres:123456@localhost:5432/brand';
var db = pgp(connectionString);

// add query functions

//GET all foods
function getAllFoods(req, res, next) {
  db.any('select * from foods ORDER BY food_subcategory ASC')
    .then(function (data) {
      res.status(200)
      // res.type('ISO-8859-1')
      // res.type('utf-16')
        .json({
          // status: 'success',
          data: data
          // ,message: 'Retrieved ALL foods'
        });
    })
    .catch(function (err) {
      return next(err);
    });
}

//GET all Menues
function getAllMenues(req, res, next) {
  db.any('select * from restaurant_menu ORDER BY id ASC')
    .then(function (data) {
      res.status(200)
      // res.type('ISO-8859-1')
      // res.type('utf-16')
        .json({
          // status: 'success',
          data: data
          // ,message: 'Retrieved ALL foods'
        });
    })
    .catch(function (err) {
      return next(err);
    });
}

module.exports = {
  getAllFoods: getAllFoods,
  getAllMenues: getAllMenues
  // getSingleFood: getSingleFood,
  // createFood: createFood,
  // updateFood: updateFood,
  // removeFood: removeFood
};

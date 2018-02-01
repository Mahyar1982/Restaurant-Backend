var promise = require('bluebird');

var options = {
  // Initialization Options
  promiseLib: promise
};

var pgp = require('pg-promise')(options);
var connectionString = process.env.DATABASE_URL || 'postgres://postgres:123456@localhost:5432/brand';
var db = pgp(connectionString);

// add query functions

//GET all foods Finnish
function getAllFoodsFinnish(req, res, next) {
  db.any('select * from foods_fi ORDER BY food_subcategory ASC')
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

//GET all foods English
function getAllFoodsEnglish(req, res, next) {
  db.any('select * from foods_en ORDER BY food_subcategory ASC')
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

//GET all Menues Finnish
function getAllMenuesFinnish(req, res, next) {
  db.any('select * from restaurant_menu_fi ORDER BY id ASC')
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

//GET all Menues English
function getAllMenuesEnglish(req, res, next) {
  db.any('select * from restaurant_menu_en ORDER BY id ASC')
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

//GET all Orders
function getAllOrders(req, res, next) {
  db.any('select * from food_order ORDER BY id ASC')
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

// //POST Order
// function createOrder(req, res, next) {
//   req.body.food_order_quantity = parseInt(req.body.food_order_quantity);
//   db.none('insert into food_order(food_order_number, food_order_name, food_order_quantity, food_order_email, food_order_phone, food_order_address)' +
//       'values(${food_order_number}, ${food_order_name}, ${food_order_quantity} , ${food_order_email} , ${food_order_phone} , ${food_order_address})',
//     req.body)
//     .then(function () {
//       res.status(200)
//         .json({
//           status: 'success',
//           message: 'Inserted one order'
//         });
//     })
//     .catch(function (err) {
//       return next(err);
//     });
// }

module.exports = {
  getAllFoodsFinnish: getAllFoodsFinnish,
  getAllFoodsEnglish: getAllFoodsEnglish,
  getAllMenuesFinnish: getAllMenuesFinnish,
  getAllMenuesEnglish: getAllMenuesEnglish
  // getSingleFood: getSingleFood,
  // createFood: createFood,
  // updateFood: updateFood,
  // removeFood: removeFood
};

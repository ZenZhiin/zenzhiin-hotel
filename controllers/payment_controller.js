var express = require('express');
var router = express.Router();
var db = require("../models");

router.get('/payments', function (req, res) {
  res.render('payments', { information: req.query, paymentId: req.query.paymentId});
})
  .post('/payments', function (req, res, next) {

    db.guests.create({
      "first_name": req.body.firstname,
      "last_name": req.body.lastname,
      "phone": req.body.phone,
      "email": req.body.email,
      "booking_id": req.body.bookingId
    });

    db.payments.create({
      "currency": req.body.currency,
      "price": req.body.price,
      "booking_id": req.body.bookingId
    }).then((result) => {
      res.render('payments', { information: req.body, paymentId : result.id });
    });
  });

router.post('/paymentComplete', function (req, res) {

  //validation 
  if (req.body.cardnumber == "123123123123123") {
    var status = {"paymentStatus":"success"};
    db.payments.update(status, { where: { id: req.body.paymentid } }).then((result) => { });
    res.render('paymentComplete', { information: req.body });
  }
  else {
    var status = {"paymentStatus":"deny"};
    db.payments.update(status, { where: { id: req.body.paymentid } }).then((result) => { });
    res.render('paymentDeny', { information: req.body });
  }
});

module.exports = router;
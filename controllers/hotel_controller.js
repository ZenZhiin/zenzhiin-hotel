var express = require('./node_modules/express');
var router = express.Router();
var db = require("../models");

router.get('/room/location', function (req, res) {
  db.locations.findAll({
  }).then(function (result) {
    res.render("location", { locations: result });
  });
});

router.post('/room/hotel', function (req, res) {
  db.hotels.findAll({
    where: {
      "location_id": req.body.locationId
    }
  }).then(function (result) {
    res.render("hotel", { hotels: result, passValue: req.body });
  });
});

router.post('/room/book', function (req, res) {
  db.bookings.findAll({attributes: ['roomId']},{
    where:{
      checkin :{
        $between: [req.body.checkin, req.body.checkout]
      },
      checkout :{
        $between: [req.body.checkin, req.body.checkout]
      },
    }
  }).then(function (result){
    let roomIds = [];
    result.forEach(element =>{
      roomIds.push(element.roomId)
    });
    
    db.rooms.findAll({
      where: {
        "hotel_id": req.body.hotel,
        "active" : true,
        "id" : { $notIn : roomIds}
      }
    }).then(function (result) {    
        var differentDays = datediff(new Date(req.body.checkin), new Date(req.body.checkout));
        let room = [];
        result.forEach(element => {
            room.push({
              "room_id": element.id,
              "room_number": element.room_number,
              "room_type": element.room_type,
              "breakfast": element.breakfast,
              "currency": element.currency,
              "price": element.price_night * differentDays,
              "checkin": req.body.checkin,
              "checkout": req.body.checkout,
              "hotelId": req.body.hotel,
              "numberOfTraveller": req.body.numberOfTraveller
            });
        });
        res.render("bookroom", { rooms: room, passValue: req.body });
    });
  });
});

router.post('/room/confirm', function (req, res, next) {
  db.bookings.create({
    "checkin": new Date(req.body.checkin),
    "checkout": new Date(req.body.checkout),
    "currency": req.body.currency,
    "price": req.body.price,
    "createAt": Date.now(),
    "updatedAt": Date.now(),
    "numberOfTraveller": req.body.numberOfTraveller,
    "roomId": req.body.roomId,
    "hotelId":req.body.hotelId
  }).then(function (result) {
    res.render("guestinformation", { bookings: result.dataValues });
  }).catch(err => {
    res.render("error", { error: { "error": "when creating the booking" } })
  });
});

module.exports = router;

function datediff(first, second) {
  return Math.round((second - first) / (1000 * 60 * 60 * 24));
}
var express = require('express');
var router = express.Router();
var db = require("../models");

router.get('/status', function (req, res) {
    db.hotels.findAll({
    }).then(function (result) {
        res.render("status", { hotels: result });
    });
}).post('/status', function (req, res, next) {
    let value;

    if(req.body.firstname){
        value = { "first_name" : req.body.firstname };
    }
    
    if(req.body.email){
        value = { "email" : req.body.email };
    }

    if(req.body.phone){
        value = { "phone" : req.body.phone };
    }
    
    db.guests.findAll({
        where: value
    }).then(function (result) {
        let bookingsId = [];
        result.forEach(element => {
            bookingsId.push(element.booking_id)
        })

        db.bookings.findAll({
            where :{
                "hotelId": req.body.hotelId,
                "id" : bookingsId 
            }
        }).then(function (result) {
            let informations = [];
            result.forEach(element =>{
                db.payments.findOne({
                    where:{
                        "booking_id": element.id
                    }
                }).then(function(result){
                    console.log(result);
                    let data ={
                        "bookingId" : element.id,
                        "numberOfTraveller": element.numberOfTraveller,
                        "checkin": element.checkin,
                        "checkout": element.checkout,
                        "currency": element.currency,
                        "price": element.price,
                        "paymentStatus": result.paymentStatus
                    }
                    informations.push(data);
                })
            });
            res.render("searchResult", { information: informations });
        })
    })
});

module.exports = router;
const async = require('async');
const passport = require('passport');
const Event = require('../models/Event');



exports.getEvents = (req, res) => {
return Event.find(function (err, events) {
    	if (!err) {
      		return res.send(events);
    	} else {
      		return console.log(err);
    	}
      });
};
exports.createEvent = (req, res)=> {
res.render('event/eventcreate', {
    title: 'Create Event'
  });
  };
exports.postEvent = (req, res, next) => {

  const event = new Event({
    name: req.body.name,
    purpose: req.body.purpose,
    category: req.body.category,
    expDate: req.body.expDate,
    ptvalue: req.body.ptvalue,
    ReqtoW: req.body.ReqtoW
  });

  
    event.save((err) => {
      if (err) { return next(err); }
      else {
      	return console.log("created");
      }
    });
    return res.send(event);

  
};

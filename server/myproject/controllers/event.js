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

exports.postEvent = (req, res, next) => {

  const event = new Event({
    name: req.body.name,
    detail: req.body.detail
  });

  
    event.save((err) => {
      if (err) { return next(err); }
      else {
      	return console.log("created");
      }
    });
    return res.send(event);

  
};

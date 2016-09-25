const async = require('async');
const passport = require('passport');
const Event = require('../models/Event');



exports.getEvents = (req, res) => {
  res.render('account/profile', {
    title: 'Account Management'
  });
};

exports.postEvent = (req, res, next) => {

  const event = new Event({
    email: req.body.name,
    password: req.body.detail
  });

  
    event.save((err) => {
      if (err) { return next(err); }
      
    });
  
};

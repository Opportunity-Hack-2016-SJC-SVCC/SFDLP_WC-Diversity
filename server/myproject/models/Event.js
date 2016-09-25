const mongoose = require('mongoose');

const eventSchema = new mongoose.Schema({
  name: { type: String, unique: true },
  eventStartDate: Date,
  eventEndDate : Date,
  detail: String
}, { timestamps: true });


/**
 * Helper method for validating user's password.
 */

const Event = mongoose.model('Event', eventSchema);
module.exports = Event;


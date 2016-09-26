const mongoose = require('mongoose');

const eventSchema = new mongoose.Schema({
  name: { type: String, unique: true },
  eventStartDate: Date,
  eventEndDate : Date,
  purpose: String,
  expDate: String,
  ptValue: String,
  category: String,
  ReqtoW: Boolean

}, { timestamps: true });


/**
 * Helper method for validating user's password.
 */

const Event = mongoose.model('event', eventSchema);
module.exports = Event;


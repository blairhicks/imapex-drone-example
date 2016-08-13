var generatePassword = require('password-generator');

exports.setMessage = function(message) {
  return message;
};

var myMessage = exports.setMessage("I'm HERE");


console.log(myMessage + " -- " + generatePassword());

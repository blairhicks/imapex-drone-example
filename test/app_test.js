var assert = require('assert');
var app = require('../app');

describe("Entrypoint", function() {
  it("should display a message", function() {
    assert.equal(app.setMessage("I'm HERE"), "I'm HERE");
  });
});

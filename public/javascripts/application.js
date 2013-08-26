$(function() {
  var faye = new Faye.Client('http://gallo-faye-exaample.herokuapp.com/faye');
  faye.subscribe("/messages/new", function(data) {
    eval(data);
  });
});

window.TwinkieSetApp = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    console.log("got to initialize");
    var router = new TwinkieSetApp.Routers.Router({
      $rootEl: $('#content')
    });
    Backbone.history.start();
  }
};

// $(document).ready(function(){
//   TwinkieSetApp.initialize();
// });

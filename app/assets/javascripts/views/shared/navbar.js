TwinkieSetApp.Views.NavBar = Backbone.View.extend({
  template: JST['shared/navbar'],
  className: "navibar",


  events: {
    'click .logout': 'logoutUser'
  },

  logoutUser: function (event) {
    $('.logout-form').submit();
  },

  render: function () {
    var content = this.template();
    this.$el.html(content);
    return this;
  }
})

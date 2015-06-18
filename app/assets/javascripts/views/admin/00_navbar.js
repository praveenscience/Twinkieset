TwinkieSetApp.Views.NavBar = Backbone.View.extend({
  template: JST['admin/00_navbar'],
  className: "navibar",


  events: {
    'click .logout': 'logoutUser',
    'click .user-buttons': 'openDropdown',
    'mouseleave .user-dropdown': 'openDropdown'
  },

  openDropdown: function (event) {
    $('.user-buttons').toggleClass('selected-nav-option');
    $('.albums-title').toggleClass('selected-nav-option');
    $('.user-dropdown').toggle();
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

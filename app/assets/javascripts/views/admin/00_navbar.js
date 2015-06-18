TwinkieSetApp.Views.NavBar = Backbone.View.extend({
  template: JST['admin/00_navbar'],
  className: "navibar",


  events: {
    'click .logout': 'logoutUser',
    'click .user-buttons': 'openDropdown',
    'mouseleave .user-dropdown': 'openDropdown',
    'click .user-profile': 'openUserForm'
  },

  openDropdown: function (event) {
    $('.user-buttons').toggleClass('selected-nav-option');
    $('.albums-title').toggleClass('selected-nav-option');
    $('.user-dropdown').toggle();
  },

  openUserForm: function (event) {
    var userForm = new TwinkieSetApp.Views.UserForm();
    $('body').append(userForm.render().$el);
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

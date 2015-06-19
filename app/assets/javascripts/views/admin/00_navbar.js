TwinkieSetApp.Views.NavBar = Backbone.View.extend({
  template: JST['admin/00_navbar'],
  className: "navibar",


  events: {
    'click .logout': 'logoutUser',
    'click .user-buttons': 'openDropdown',
    'mouseleave .user-dropdown': 'openDropdown',
    'click .user-profile': 'openUserForm',
    'click .change-password': 'changePassword'
  },

  changePassword: function (event) {
    var userPassword = new TwinkieSetApp.Views.UserPassword();
    $('body').append(userPassword.render().$el);
  },

  openDropdown: function (event) {
    $('.user-buttons').toggleClass('selected-nav-option');
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

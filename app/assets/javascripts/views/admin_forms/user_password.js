TwinkieSetApp.Views.UserPassword = Backbone.View.extend({
  template: JST['admin_forms/user_password'],
  className: 'form-modal',

  initialize: function () {
    TwinkieSetApp.Views.defaultKeys.call(this);
  },

  events: {
    'submit form': 'changePassword',
    'click .cancel-password': 'closeForm'
  },

  closeForm: function (event) {
    event.preventDefault();
    this.remove();
  },

  changePassword: function (event) {
    event.preventDefault();
    var attrs = $(event.currentTarget).serializeJSON();

    if (attrs.user.new_password !== attrs.user.password) {
      this.$el.find('.errors').html("New passwords do not match.");
      return;
    }
    var user = new TwinkieSetApp.Models.Owner({ id: CURRENT_USER.id });
    user.save(attrs, {
      success: function () {
        this.remove();
      }.bind(this),
      error: function (models, response) {
        if (response.responseJSON) {
          this.$el.find('.errors').html(response.responseJSON.join("."));
        } else {
          this.$el.find('.errors').html(response.responseText);
        }
      }.bind(this)
    });
  },

  render: function () {
    var content = this.template();
    this.$el.html(content);
    return this;
  }

});

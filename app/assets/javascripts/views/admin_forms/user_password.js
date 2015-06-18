TwinkieSetApp.Views.UserPassword = Backbone.View.extend({
  template: JST['admin_forms/user_password'],
  className: 'form-modal',

  events: {
    'submit form': 'changePassword',
    'click .cancel-password': 'closeForm'
  },

  closeForm: function (event) {
    this.$el.hide();
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
        this.closeForm();
      }.bind(this),
      error: function (models, response) {
        debugger;
        if (response.responseJSON) {
          this.$el.find('.errors').html(response.responseJSON.join(",,") + ".");
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

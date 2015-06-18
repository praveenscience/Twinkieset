TwinkieSetApp.Views.UserForm = Backbone.View.extend({
  template: JST['admin_forms/user_form'],
  className: 'form-modal',

  events: {
    'click .cancel-user': 'closeForm',
    'submit form': 'updateUser'
  },

  closeForm: function () {
    this.$el.hide();
  },

  updateUser: function (event) {
    event.preventDefault();
    var attrs = $(event.currentTarget).serializeJSON();
    var user = new TwinkieSetApp.Models.Owner({ id: CURRENT_USER.id });
    user.save(attrs, {
      success: function () {
        console.log(user.attributes);
        this.closeForm();
      }.bind(this),
      error: function (model, response) {
        response.response
        this.$el.find('.errors').html(response.responseJSON.join(",,") + ".");
      }.bind(this)
    });
  },

  render: function () {
    var content = this.template();
    this.$el.html(content);
    return this;
  }
});

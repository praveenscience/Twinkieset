TwinkieSetApp.Views.UserForm = Backbone.View.extend({
  template: JST['admin_forms/user_form'],
  className: 'form-modal',

  initialize: function (options) {
    TwinkieSetApp.Views.defaultKeys.call(this);
    this.user = options.user;
    this.user.fetch();
    this.listenTo(this.user, 'sync', this.render);
  },

  events: {
    'click .cancel-user': 'closeForm',
    'submit form': 'updateUser'
  },

  closeForm: function () {
    event.preventDefault();
    this.remove();
  },

  updateUser: function (event) {
    event.preventDefault();
    var attrs = $(event.currentTarget).serializeJSON();
    var user = this.user;
    user.save(attrs, {
      success: function () {
        this.remove();
        user.fetch();
      }.bind(this),
      error: function (models, response) {
        this.$el.find('.errors').html(response.responseJSON.join(". "));
      }.bind(this)
    });
  },

  render: function () {
    var content = this.template({
      user: this.user
    });
    this.$el.html(content);
    return this;
  }
});

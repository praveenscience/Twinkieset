TwinkieSetApp.Views.PublicUsersIndex = Backbone.View.extend({
  template: JST['public/07_public_users_index'],

  render: function () {
    var content = this.template();
    this.$el.html(content);
    return this;
  }
});

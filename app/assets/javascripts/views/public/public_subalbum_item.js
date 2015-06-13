TwinkieSetApp.Views.PublicSubalbumItem = Backbone.View.extend({
  template: JST['public/public_subalbum_item'],

  render: function () {
    var content = this.template();
    this.$el.html(content);
    return this;
  }
});

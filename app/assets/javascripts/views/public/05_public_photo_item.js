TwinkieSetApp.Views.PhotoItem = Backbone.View.extend({

  template: JST['public/public_photo_item'],

  render: function () {
    var content = this.template({
      photo: this.model
    });
    this.$el.html(content);
    return this;
  }
});

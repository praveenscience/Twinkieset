TwinkieSetApp.Views.PhotoItemModal = Backbone.View.extend({
  template: JST['public/06_photo_item_modal'],
  className: 'gallery-modal',

  render: function () {
    console.log('rendering');
    var content = this.template();
    this.$el.html(content);
    return this;
  }
});

TwinkieSetApp.Views.PhotoItemModal = Backbone.View.extend({
  template: JST['public/photo_item_modal'],
  className: 'form-modal',

  render: function () {
    alert('hereeee');
    var content = this.template();
    this.$el.html(content);
    return this;
  }
});

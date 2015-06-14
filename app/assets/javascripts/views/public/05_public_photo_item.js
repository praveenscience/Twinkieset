TwinkieSetApp.Views.PhotoItem = Backbone.View.extend({
  template: JST['public/public_photo_item'],
  className: 'grid-item',

  events: {
    'click': 'displayModal'
  },

  displayModal: function (event) {
    alert('something');
    var content = new TwinkieSetApp.Views.PhotoItemModal({
      model: this.model
    });
    $('body').append(content.render().$el);
  },

  render: function () {
    var content = this.template({
      photo: this.model
    });
    this.$el.html(content);
    return this;
  }
});

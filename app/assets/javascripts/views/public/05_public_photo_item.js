TwinkieSetApp.Views.PhotoItem = Backbone.View.extend({
  template: JST['public/05_public_photo_item'],
  className: 'grid-item',

  events: {
    'click': 'displayModal'
  },

  displayModal: function (event) {
    var content = new TwinkieSetApp.Views.PhotoItemModal({
      model: this.model,
      collection: this.collection
    });
    $('body').append(content.render().$el);
  },

  render: function () {
    var content = this.template({
      photo: this.model
    });
    this.$el.html(content);

    if (TwinkieSetApp.Views.masonryGallery) {

      TwinkieSetApp.Views.masonryGallery.masonry('appended', this.$el);
      setTimeout(function () {
        TwinkieSetApp.Views.sizing();
        TwinkieSetApp.Views.masonryGallery.masonry();
      }, 100);
    }


    return this;
  }
});

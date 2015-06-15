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

    // give a fade in effect
    this.$el.css('opacity',0);
    $('.loading-gif').fadeIn('slow');

    setTimeout(function () {
      this.$el.css('opacity', 1);
      $('.loading-gif').fadeOut('slow');
    }.bind(this), 1000);
    return this;
  },


});

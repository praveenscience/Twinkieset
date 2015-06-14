TwinkieSetApp.Views.PublicSubalbumPhotos = Backbone.CompositeView.extend({
  template: JST['public/public_subalbum_photos'],

  initialize: function () {
    this.listenTo(this.model.photos(), 'add', this.addPhotoView);
    this.model.photos().each(this.addPhotoView.bind(this));
  },

  addPhotoView: function (photo) {
    var subview = new TwinkieSetApp.Views.PhotoItem({ model: photo });
    this.addSubview('.public-subalbum-photos', subview);
  },

  render: function () {
    var content = this.template({
      subalbum: this.model
    });
    this.$el.html(content);
    this.attachSubviews();
    this.$el.find('.public-subalbum-photos').prepend('<div class="grid-sizer"></div>');

    var sizing = function () {
      var windowWidth = $(window).width() - 48;

      if (windowWidth > 1040) {
        $('.grid-item').css('width', (windowWidth-18)/4);
      } else if (windowWidth > 820) {
        $('.grid-item').css('width', (windowWidth-12)/3);
      } else if (windowWidth > 600) {
        $('.grid-item').css('width', (windowWidth-6)/2);
      } else {
        $('.grid-item').css('width', (windowWidth));
      }
    };

    $(window).resize(function () {
      sizing();
    });

    $(window).on('load', function () {
      this.$el.find('.public-subalbum-photos').masonry({
        itemSelector: '.grid-item',
        gutter: 6
      });

      sizing();

    }.bind(this));



    return this;
  }
});

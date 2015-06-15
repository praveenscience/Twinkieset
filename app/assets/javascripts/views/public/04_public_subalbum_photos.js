TwinkieSetApp.Views.PublicSubalbumPhotos = Backbone.CompositeView.extend({
  template: JST['public/04_public_subalbum_photos'],

  initialize: function () {
    this.listenTo(this.model.photos(), 'add', this.addPhotoView);

    this.beginning = 0;
    this.ending = 2;
    this.limitedPhotos = this.limitPhotos(this.beginning, this.ending);

    this.limitedPhotos.forEach(this.addPhotoView.bind(this));
  },

  events: {
    'click .more': 'loadMorePhotos'
  },

  loadMorePhotos: function () {
    this.beginning = this.ending;
    this.ending += 2;
    this.limitedPhotos = this.limitPhotos(this.beginning, this.ending);
    this.limitedPhotos.forEach(this.addPhotoView.bind(this));

  },

  limitPhotos: function (beginning, ending) {
    return this.model.photos().slice(beginning, ending);
  },

  addPhotoView: function (photo) {
    var subview = new TwinkieSetApp.Views.PhotoItem({
      model: photo,
      collection: this.model.photos()
    });
    this.addSubview('.public-subalbum-photos', subview);
  },

  render: function () {

    var content = this.template({
      subalbum: this.model
    });
    this.$el.html(content);
    this.attachSubviews();

    if (!TwinkieSetApp.Views.masonryGallery) {
      setTimeout(function () {
        this.addMasonry();
      }.bind(this), 0);

    }
    return this;
  },

  addMasonry: function (event) {
    TwinkieSetApp.Views.sizing = function () {
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
      TwinkieSetApp.Views.sizing();
    });

    TwinkieSetApp.Views.sizing();
    TwinkieSetApp.Views.masonryGallery = $('.public-subalbum-photos').masonry({
      itemSelector: '.grid-item',
      gutter: 6
    });


  },
});

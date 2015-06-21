TwinkieSetApp.Views.PublicSubalbumPhotos = Backbone.CompositeView.extend({
  template: JST['public/04_public_subalbum_photos'],

  initialize: function () {
    this.listenTo(this.model.photos(), 'add', this.addPhotoView);

    this.beginning = 0;
    this.ending = 10;
    this.limitedPhotos = this.limitPhotos(this.beginning, this.ending);

    this.limitedPhotos.forEach(this.addPhotoView.bind(this));

    $(window).resize(function () {
      $(window).scroll(function () {
        var docHeight = $(document).height();
        var windowHeight = $(window).height();
        var currentScroll = $(document).scrollTop();
        if (currentScroll >= (docHeight - windowHeight - 100)) {
          setTimeout(function () {
            this.loadMorePhotos();
          }.bind(this), 500);
        }
      }.bind(this));
    }.bind(this));
    // TODO: possibly replace with callbacks from Kaminari demo

    $(window).resize();
  },

  events: {
    // 'click .more': 'loadMorePhotos',
  },

  loadMorePhotos: function () {
    this.beginning = this.ending;
    this.ending += 10;
    this.limitedPhotos = this.limitPhotos(this.beginning, this.ending);
    this.limitedPhotos.forEach(this.addPhotoView.bind(this));

    // this.hideLoadMoreButton();

    setTimeout(function () {
      if (this.ending >= this.model.photos().length) {
        $('.view-more').fadeIn();
      }
    }.bind(this), 1000);
  },

  // hideLoadMoreButton: function () {
  //   setTimeout(function () {
  //     if (this.ending >= this.model.photos().length) {
  //       $('.more').hide();
  //     }
  //   }.bind(this), 0);
  // },

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

    // this.hideLoadMoreButton();
    this.onRender();


    return this;
  },

  onRender: function () {
    $('.grid-item').imagesLoaded(function () {
      this.addMasonry();
    }.bind(this))
    // $('#container').imagesLoaded()
    //   .always( function( instance ) {
    //     this.addMasonry();
    //   }.bind(this))
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

    $('.grid-item').imagesLoaded(function () {
      loaded = true;
      console.log('finished loading');
      TwinkieSetApp.Views.sizing();
      TwinkieSetApp.Views.masonryGallery = $('.public-subalbum-photos').masonry({
        itemSelector: '.grid-item',
        gutter: 6
      });
      TwinkieSetApp.Views.masonryGallery.masonry();
    });





  },
});

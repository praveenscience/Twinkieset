TwinkieSetApp.Views.PublicAlbumShow = Backbone.CompositeView.extend({
  template: JST['public/public_album_show'],

  initialize: function (options) {
    // model is album
    this.userID = options.userID;
    this.albumID = options.albumID;
    this.setID = options.setID;
    this.album_owner = options.album_owner;
    this.listenTo(this.album_owner, "sync", this.findFirstSubalbum);
    // this.listenTo(this.album, "add", this.addSubalbum);
    // this.album.subalbums().each(this.addSubalbum.bind(this));
  },

  events: {
    'click .album-open-button': 'scrollToBeginning'
  },

  ensureSubalbum: function () {

    this.findFirstSubalbum();
  },

  scrollToBeginning: function (event) {
    $('html, body').animate({
      scrollTop: $('.information').offset().top
    }, 2000);
  },

  findFirstSubalbum: function () {
    this.albums = this.album_owner.albums();
    this.album = this.albums.get(this.albumID);

    this.listenTo(this.album, "add", this.addSubalbum);
    this.album.subalbums().each(this.addSubalbum.bind(this));

    if (this.setID === null) {
      // if we don't have a route to determine our subalbum, we'll return the first one
      this.setID = this.album.get('first_subalbum_id');
    }

    this.render();

    $('.list-of-subalbums li').removeClass("selected-subalbum");
    $('.list-of-subalbums li.subalbum-' + this.setID).addClass("selected-subalbum");

    var subalbum = this.album.subalbums().get(this.setID);
    var photosInSubalbum = new TwinkieSetApp.Views.PublicSubalbumPhotos({
      model: subalbum
    });

    $('.public-photos-index').html(photosInSubalbum.render().$el);
    var collectionID = this.album.id;

    // TODO find a way to get the owner from the album
    Backbone.history.navigate('#public/'+ this.userID +'/collection/'+ this.albumID + '/set/'+ this.setID, { trigger: true });
  },

  addSubalbum: function (subalbum) {
    var subview = new TwinkieSetApp.Views.PublicSubalbumItem({
      model: subalbum,
      user_id: this.userID
    });
    this.addSubview('.list-of-subalbums', subview);
  },

  render: function () {
    var content = this.template({
      album: this.album,
      owner: this.album_owner
    });
    console.log(this.model);
    this.$el.html(content);
    var backgroundImage = this.album.get('cover_image_url');
    this.$el.find('.hero').css('background', "url(" + backgroundImage + ")");
    this.$el.find('.hero').css('background-size', "cover");
    this.$el.find('.hero').css('background-position', "center center");


    $(window).resize(function () {
      var windowHeight = $(window).height();
      console.log(windowHeight);
      this.$el.find('.hero').css('height', windowHeight);
    }.bind(this));

    $(window).resize();

    this.attachSubviews();

    this.addMasonry();
    return this;
  },

  addMasonry: function (event) {
    var sizing = function () {
      console.log('something');
      var windowWidth = $(window).width() - 48;
      console.log(windowWidth);

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

    $(window).load(function () {
      sizing();
      this.$el.find('.public-subalbum-photos').masonry({
        itemSelector: '.grid-item',
        gutter: 6
      });

    }.bind(this)).trigger('resize');
  },
});

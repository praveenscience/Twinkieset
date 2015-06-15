TwinkieSetApp.Views.PublicAlbumShow = Backbone.CompositeView.extend({
  template: JST['public/02_public_album_show'],

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
    'click .album-open-button, .view-more, .list-of-subalbums': 'scrollToBeginning',
    // 'click .view-more': 'scrollToBeginning'
  },

  scrollToBeginning: function (event) {
    setTimeout(function () {
      $('html, body').animate({
        scrollTop: $('.information').offset().top
      }, 1000);
    }, 500);

  },

  findFirstSubalbum: function () {
    this.albums = this.album_owner.albums();
    this.album = this.albums.get(this.albumID);

    this.listenTo(this.album, "add", this.addSubalbum);
    this.album.subalbums().each(this.addSubalbum.bind(this));

    this.listenTo(this.album, "add", this.addNextSubalbum);
    this.album.subalbums().each(this.addNextSubalbum.bind(this));

    if (this.setID === null) {
      // if we don't have a route to determine our subalbum, we'll return the first one
      this.setID = this.album.get('first_subalbum_id');
    }

    this.render();

    $('.list-of-subalbums li, .view-more li').removeClass("selected-subalbum");
    $('.list-of-subalbums li.subalbum-' + this.setID).addClass("selected-subalbum");
    $('.view-more li.subalbum-' + this.setID).hide();

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
    this.addSubview('.view-more', subview);
    this.addSubview('.list-of-subalbums', subview);
  },


  addNextSubalbum: function (subalbum) {
    var subview = new TwinkieSetApp.Views.PublicSubalbumItem({
      model: subalbum,
      user_id: this.userID
    });
    this.addSubview('.view-more', subview);
  },

  // fixNav: function () {
  //   if
  // },
  //
  render: function () {
    var content = this.template({
      album: this.album,
      owner: this.album_owner
    });
    // console.log(this.model);
    this.$el.html(content);
    var backgroundImage = this.album.get('cover_image_url');
    this.$el.find('.hero').css('background', "url(" + backgroundImage + ")");
    this.$el.find('.hero').css('background-size', "cover");
    this.$el.find('.hero').css('background-position', "center center");




    $(window).resize(function () {
      var windowHeight = $(window).height();
      // console.log(windowHeight);
      this.$el.find('.hero').css('height', windowHeight);

      // scrolling should fix nav
      $(window).scroll(function () {
        if ($(window).scrollTop() >= windowHeight) {
          // scrolled past hero
          $('.information').addClass('lock-nav').removeClass('reduce-padding');
          $('.gallery-section').css('top', $('.information').height()+50);
        } else if (($(window).scrollTop() <= windowHeight)) {
          // before hero
          $('.information').removeClass('lock-nav').removeClass('reduce-padding');
          $('.gallery-section').css('top', 0);
        }
        if (($(window).scrollTop() >= windowHeight+100)) {
          // scrolled past hero + 100
          $('.information').addClass('reduce-padding');
        }
      });

    }.bind(this));

    $(window).resize();

    this.attachSubviews();

    $('.view-more').hide();
    return this;
  },


});

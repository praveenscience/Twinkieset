TwinkieSetApp.Views.PublicSubalbumItem = Backbone.View.extend({
  template: JST['public/03_public_subalbum_item'],
  tagName: 'li',
  initialize: function (options) {
    this.user_id = options.user_id;

    // this.listenTo(this.model, 'testingThis', this.changeSubalbum);
    //this.model is a subalbum
    this.on('testingThis', this.changeSubalbum);

  },

  events: {
    "click": "changeSubalbum",
    // "testingThis": "changeSubalum"
  },

  changeSubalbum: function (event) {

    var currentSub = this.model;

    $('.list-of-subalbums li').removeClass("selected-subalbum");
    this.$el.addClass("selected-subalbum");
    // alert('something!');
    TwinkieSetApp.Views.masonryGallery.masonry('destroy');
    TwinkieSetApp.Views.masonryGallery = null;
    $('.public-subalbum-photos').html("");


    var photosInSubalbum = new TwinkieSetApp.Views.PublicSubalbumPhotos({
      model: currentSub
    });
    $('.public-photos-index').html(photosInSubalbum.render().$el);

    // TODO implemnt backbone navigate trigger with assocation instead ??? how??? don't want to pass the user_id if not necessary.
    var user_id = this.user_id;
    var collection_id = currentSub._album.id;
    var set_id = currentSub.id;
    Backbone.history.navigate("#public/" + user_id + "/collection/" + collection_id + "/set/" + set_id);


  },

  render: function () {
    var content = this.template({
      subalbum: this.model
    });

    this.$el.html(content);
    this.$el.addClass('subalbum-' + this.model.id);


    return this;
  },


});

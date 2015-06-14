TwinkieSetApp.Views.PublicSubalbumItem = Backbone.View.extend({
  template: JST['public/public_subalbum_item'],
  tagName: 'li',

  initialize: function (options) {
    this.user_id = options.user_id;
    //this.model is a subalbum
  },

  events: {
    "click": "changeSubalbum",
    "testingThis": "changeSubalum"
  },

  changeSubalbum: function (event) {
    var photosInSubalbum = new TwinkieSetApp.Views.PublicSubalbumPhotos({
      model: this.model
    });
    $('.public-photos-index').html(photosInSubalbum.render().$el);

    $('.list-of-subalbums li').removeClass("selected-subalbum");
    this.$el.addClass("selected-subalbum");
    // TODO implemnt backbone navigate trigger with assocation instead ??? how??? don't want to pass the user_id if not necessary.
    var user_id = this.user_id;
    var collection_id = this.model._album.id;
    var set_id = this.model.id;
    Backbone.history.navigate("#public/" + user_id + "/collection/" + collection_id + "/set/" + set_id);

  },

  render: function () {
    var content = this.template({
      subalbum: this.model
    });
    this.$el.html(content);
    return this;
  }
});

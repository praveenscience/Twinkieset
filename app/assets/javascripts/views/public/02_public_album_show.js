TwinkieSetApp.Views.PublicAlbumShow = Backbone.CompositeView.extend({
  template: JST['public/public_album_show'],

  initialize: function (options) {
    // model is album
    this.listenTo(this.model, "sync", this.findFirstSubalbum);
    this.listenTo(this.model.subalbums(), "add", this.addSubalbum);
    this.model.subalbums().each(this.addSubalbum.bind(this));
    this.setID = options.setID;





  },

  findFirstSubalbum: function () {
    if (this.setID === null) {
      // if we don't have a route to determine our subalbum, we'll return the first one
      this.setID = this.model.get('first_subalbum_id');
    }
    console.log(this.setID);
    Backbone.history.navigate('#public/1/collection/5/set/'+ this.setID, { trigger: true });
    this.render();

    var subalbum = this.model.subalbums().getOrFetch(this.setID);
    var photosInSubalbum = new TwinkieSetApp.Views.PublicSubalbumPhotos({
      model: subalbum
    });
    $('.holder').html(photosInSubalbum.render().$el);


  },

  addSubalbum: function (subalbum) {
    var subview = new TwinkieSetApp.Views.PublicSubalbumItem({
      model: subalbum
    });
    this.addSubview('.list-of-subalbums', subview);
  },

  render: function () {
    var content = this.template({
      album: this.model
    });
    console.log(this.model);
    this.$el.html(content);
    this.attachSubviews();
    return this;
  }
});

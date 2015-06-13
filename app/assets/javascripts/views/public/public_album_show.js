TwinkieSetApp.Views.PublicAlbumShow = Backbone.CompositeView.extend({
  template: JST['public/public_album_show'],

  initialize: function () {
    // model is album
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.model.subalbums(), "add", this.addSubalbum);
    this.model.subalbums().each(this.addSubalbum.bind(this));
  },

  addSubalbum: function (subalbum) {
    var subview = new TwinkieSetApp.Views.PublicSubalbumItem();
    this.attachSubview('.list-of-subalbums', subview);
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

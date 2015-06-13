TwinkieSetApp.Views.PublicAlbumItem = Backbone.View.extend({
  template: JST['public/public_album_item'],
  className: 'one-album col-xs-4 col-sm-4',

  intialize: function () {
    this.listenTo(this.model, "sync", this.render);
  },


  render: function () {
    this.model.fetch();
    var content = this.template({
      album: this.model
    });

    this.$el.html(content);


    var cover_image = this.model.get("cover_image_url");

    this.$el.find('.album-image').css('background', 'url('+cover_image+')');
    this.$el.find('.album-image').css('background-size', 'cover');
    this.$el.find('.album-image').css('background-position', 'center center');
    return this;
  }
});

TwinkieSetApp.Views.AlbumsIndexView = Backbone.View.extend({
  template: JST['items/albums_index_item'],
  className: 'album_index_item col-xs-6 col-sm-3',

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);
  },

  events: {
    'click .delete-album-button': 'deleteAlbumConfirmation',

  },

  deleteAlbumConfirmation: function () {
    var deleteAlbumModal = new TwinkieSetApp.Views.DeleteAlbum({
      model: this.model
    });
    $('body').append(deleteAlbumModal.render().$el);
  },





  render: function () {


    var cover_image;
    console.log(this.model.toJSON());
    if (this.model.get('cover_image_url')) {
      cover_image = this.model.get('cover_image_url');
    } else {
      cover_image = "http://images.karenling.net/2014/06/diane_angel_gomez_nadine_jose_048.jpg"
    }


    var content = this.template({ album: this.model, cover_image: cover_image });
    this.$el.html(content);
    this.$el.find('.cover_image_container').css('background', 'url('+cover_image+')');
    this.$el.find('.cover_image_container').css('background-size', 'cover');
    this.$el.find('.cover_image_container').css('background-position', 'center center');


    return this;
  }
});

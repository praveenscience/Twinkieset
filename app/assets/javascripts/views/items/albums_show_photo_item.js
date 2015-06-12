TwinkieSetApp.Views.AlbumsShowPhotoItem = Backbone.View.extend({
  template: JST['items/albums_show_photo_item'],
  className: 'photo-item not-selected',
  tagName: 'li',

  initialize: function (options) {
    this.selectedPhotosArr = options.selectedPhotosArr;
    this.listenTo(this.model, "sync", this.render);
  },

  events: {
    "click": "addSelectedPhoto",
  },

  addSelectedPhoto: function (event) {
    var photoItem = $(event.currentTarget);

    if (photoItem.hasClass('selected')) {
      photoItem.removeClass('selected').addClass('not-selected');
      var indexOfModel = this.selectedPhotosArr.indexOf(this.model);
      this.selectedPhotosArr.splice(indexOfModel, 1);
    } else {
      photoItem.addClass('selected').removeClass('not-selected');
      this.selectedPhotosArr.push(this.model);
    }

    if (this.selectedPhotosArr.length > 0) {
      $('.photo-buttons-container').show();
      if (this.selectedPhotosArr.length !== 1) {
        $('.make-cover-button').addClass('gray-out');
      } else if (this.selectedPhotosArr.length === 1) {
        $('.make-cover-button').removeClass('gray-out');
        $('.make-cover-button').on("click", this.makeCoverImage.bind(this));
      }
    } else {
      $('.photo-buttons-container').hide();
    }
  },

  makeCoverImage: function (event) {
    if(this.selectedPhotosArr.length !== 1){
      return;
    }
    var photoID = this.selectedPhotosArr[0].id;
    var album = this.model._subalbum._album;
    album.save({ "cover_image_id": photoID }, { patch: true });
  },

  render: function () {
    var content = this.template({ photo: this.model });
    this.$el.html(content);
    return this;
  },

});

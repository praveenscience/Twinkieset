TwinkieSetApp.Views.AlbumsShowPhotoItem = Backbone.View.extend({
  template: JST['items/albums_show_photo_item'],
  className: 'photo-item not-selected',
  tagName: 'li',

  initialize: function (options) {
    // this.TwinkieSetApp.selectedPhotosArr = options.TwinkieSetApp.selectedPhotosArr;
    this.listenTo(this.model, "sync", this.render);
    // this.listenTo(this.model, "selectAllPhotos", this.addAllPhotos);
  },

  events: {
    "click": "addSelectedPhoto",
  },

  // addAllPhotos: function (event) {
  //   debugger;
  // },
  

  addSelectedPhoto: function (event) {
    var photoItem = $(event.currentTarget);

    if (photoItem.hasClass('selected')) {
      photoItem.removeClass('selected').addClass('not-selected');
      var indexOfModel = TwinkieSetApp.selectedPhotosArr.indexOf(this.model);
      TwinkieSetApp.selectedPhotosArr.splice(indexOfModel, 1);
    } else {
      photoItem.addClass('selected').removeClass('not-selected');
      TwinkieSetApp.selectedPhotosArr.push(this.model);
    }

    if (TwinkieSetApp.selectedPhotosArr.length > 0) {
      $('.photo-buttons-container').show();
      if (TwinkieSetApp.selectedPhotosArr.length !== 1) {
        $('.make-cover-button').addClass('gray-out');
      } else if (TwinkieSetApp.selectedPhotosArr.length === 1) {
        $('.make-cover-button').removeClass('gray-out');
        $('.make-cover-button').on("click", this.makeCoverImage.bind(this));
      }
    } else {
      $('.photo-buttons-container').hide();
    }
    console.log(TwinkieSetApp.selectedPhotosArr);
    this.updateSelectedPhotoCounter();
  },

  updateSelectedPhotoCounter: function () {
    $('.number-of-selected').html(TwinkieSetApp.selectedPhotosArr.length + " selected");
  },

  makeCoverImage: function (event) {
    if(TwinkieSetApp.selectedPhotosArr.length !== 1){
      return;
    }
    var photoID = TwinkieSetApp.selectedPhotosArr[0].id;
    var album = this.model._subalbum._album;

    album.save({ "cover_image_id": photoID }, { patch: true });

  },

  render: function () {
    var content = this.template({ photo: this.model });
    this.$el.html(content);
    return this;
  },

});

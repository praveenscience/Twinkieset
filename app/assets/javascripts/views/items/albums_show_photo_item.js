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
    "click .trash-photos-button": "showPhotoDeleteModal"
  },

  showPhotoDeleteModal: function (event) {
    alert("something");
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
    } else {
      $('.photo-buttons-container').hide();
    }

    console.log(this.selectedPhotosArr);

  },

  render: function () {
    var content = this.template({ photo: this.model });
    this.$el.html(content);
    return this;
  }
});

TwinkieSetApp.Views.PhotosIndex = Backbone.CompositeView.extend({

  template: JST['photos/index'],

  initialize: function () {
    this.listenTo(this.collection, "add", this.render);
    this.collection.each(this.addPhotoView.bind(this));
  },

  // TODO

  sortPhotos: function(by) {
    this.collection.comparator = by;
  },

  addPhotoView: function (photo) {
    var subview = new TwinkieSetApp.Views.AlbumsShowPhotoItem({
      model: photo
    });
    this.addSubview('.photo-items', subview);
  },

  render: function () {
    var content = this.template({
      subalbum: this.model
    });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  }

});

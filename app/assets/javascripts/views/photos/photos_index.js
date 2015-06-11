TwinkieSetApp.Views.PhotosIndex = Backbone.CompositeView.extend({

  template: JST['photos/index'],

  initialize: function () {
    this.listenTo(this.collection, 'sync', this.render);
    this.listenTo(this.collection, "add", this.render);
    this.collection.each(this.addPhotoView.bind(this));
  },

  // TODO able to sort photos

  // events: {
  //   'click .sort-photo-button': 'sortPhotos'
  // },
  //
  // sortPhotos: function() {
  //   console.log('sorting');
  //
  //   // resortSubviews and pass in css selector and the comparator
  //   this.collection.comparator = 'image_url';
  //   this.render();
  // },

  addPhotoView: function (photo) {
    var subview = new TwinkieSetApp.Views.AlbumsShowPhotoItem({
      model: photo
    });
    this.addSubview('.photo-items', subview);
  },

  render: function () {
    // this.collection.comparator = 'image_url';
    var content = this.template({
      subalbum: this.model
    });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  }

});

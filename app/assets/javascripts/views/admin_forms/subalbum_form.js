TwinkieSetApp.Views.SubalbumForm = Backbone.View.extend({
  template: JST['admin_forms/subalbum_form'],
  className: 'form-modal',

  initialize: function (options) {
    this.header = options.header;
    this.album = options.album;
    this.subalbum = options.subalbum;
  },

  render: function () {
    var content = this.template({
      header: this.header,
      album: this.album,
      subalbum: this.subalbum
    });
    this.$el.html(content);
    return this;
  },

  events: {
    'submit form': 'createSubalbum',
    'click .cancel-subalbum': 'hideSubalbumForm'
  },

  createSubalbum: function (event) {
    event.preventDefault();
    var attrs = $(event.currentTarget).serializeJSON();
    var subalbum = this.subalbum;
    subalbum.save(attrs, {
      success: function () {
        this.album.subalbums().add(subalbum);
        this.$el.hide();
      }.bind(this)
    });

  },

  hideSubalbumForm: function () {
    event.preventDefault();
    this.$el.hide();
  }
});

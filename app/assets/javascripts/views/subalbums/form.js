TwinkieSetApp.Views.SubalbumForm = Backbone.View.extend({
  template: JST['subalbums/form'],
  className: 'form-modal',

  render: function () {
    var content = this.template({ album: this.model});
    this.$el.html(content);
    return this;
  },

  events: {
    'submit form': 'createSubalbum',
    'click .cancel-new-subalbum': 'hideSubalbumForm'
  },

  createSubalbum: function (event) {
    event.preventDefault();
    var attrs = $(event.currentTarget).serializeJSON();
    var newSubalbum = new TwinkieSetApp.Models.Subalbum();

    newSubalbum.save(attrs, {
      success: function () {
        this.collection.add(newSubalbum);
        this.$el.hide();
      }.bind(this)
    });

  },

  hideSubalbumForm: function () {
    this.$el.hide();
  }
});

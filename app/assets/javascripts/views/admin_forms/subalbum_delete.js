TwinkieSetApp.Views.DeleteSubalbum = Backbone.View.extend({
  template: JST['admin_forms/subalbum_delete'],
  className: 'form-modal',

  events: {
    'click .delete-subalbum-confirm': 'deleteSubalbum',
    'click .cancel-delete-subalbum': 'cancelSubalbum'
  },

  initialize: function (options) {
    this.subalbum = options.subalbum;
  },

  cancelSubalbum: function () {
    this.$el.hide();
  },

  deleteSubalbum: function () {
    this.remove();
    this.subalbum.destroy();
    var path = "#collection/" + Backbone.history.getFragment().split("/")[1];
    Backbone.history.navigate(path, { trigger: true });
  },

  render: function () {
    var content = this.template({ subalbum: this.subalbum });
    this.$el.html(content);
    return this;
  }

});

TwinkieSetApp.Views.Notice = Backbone.View.extend({
  template: JST['admin_forms/notice'],

  timeout: function () {
    setTimeout(function () {
      this.remove();
    }.bind(this), 2000);
  },

  render: function () {
    var content = this.template();
    this.$el.html(content);
    this.timeout();
    return this;
  }
});

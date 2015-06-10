TwinkieSetApp.Views.NavBar = Backbone.View.extend({
  template: JST['shared/navbar'],
  className: "navibar",

  render: function () {
    var content = this.template();
    this.$el.html(content);
    return this;
  }
})

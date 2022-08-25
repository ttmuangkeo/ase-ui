module.exports = {
  initVueFilters(Vue) {
    Vue.filter('normalizeBadEncoding', function (value) {
      return value.replace(/%20/g, ' ').replace(/%2C/g, ',').replace(/%27/g, '\'');
    });
  }
}

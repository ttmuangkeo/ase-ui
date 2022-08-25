import Vue from 'vue'
import App from '../app.vue'
import store from '../data/Store';
import router from '../router';
import VueFilters from '../contrib/vue_filters';
import PubSub from 'pubsub-js';

VueFilters.initVueFilters(Vue);


document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    router,
    store,
    render: h => h(App)
  }).$mount()
  document.body.appendChild(app.$el)
})

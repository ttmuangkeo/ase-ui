import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home';
import Reprocess from './views/Reprocess';
import Brand from './views/Brand';
import AllCompany from './views/AllCompany';
import OpenHouse from './views/OpenHouse';

Vue.use(Router);

// Secret sauce to ignore custom lit-element vitruvius components.
Vue.config.ignoredElements = [/vp-\w*/];

export default new Router({
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/reprocess',
      name: 'reprocess',
      component: Reprocess
    },
    {
      path: '/brand/:companyId',
      name: 'get-brand',
      component: Brand
    },
    {
      path: '/company',
      name: 'company',
      component: AllCompany
    },
    {
      path: '/openhouse',
      name: 'openhouse',
      component: OpenHouse
    }
  ]
})

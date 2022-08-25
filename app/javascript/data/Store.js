import Vue from 'vue';
import Vuex, { Store } from 'vuex';

Vue.use(Vuex);

export default new Vuex.Store({
  state: {
   companyBranding: {},
   agentProfile: {},
   allCompany: {},
   endpoint: []
  },
  mutations: {
    updateAgentProfile(store, val) {
      store.agentProfile = val
    },
    updateCompanyBranding(store, val) {
      store.companyBranding = val
    },
    updateAllCompany(store, val) {
      store.allCompany = val
    },
    updateEndpoints(store, val) {
      store.endpoint = val
    }
  },
  getters: {
    agentProfile: (store) => store.agentProfile,
    companyBranding: (store) => store.companyBranding,
    allCompany: (store) => store.allCompany,
    endpoint: (store) => store.endpoint
  },
});

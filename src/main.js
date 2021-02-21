import Vue from 'vue'
import App from './App.vue'
import BootstrapVue from 'bootstrap-vue'
Vue.config.productionTip = false
Vue.use(BootstrapVue)
Vue.prototype.$protocol = process.env.VUE_APP_PROTOCOL
Vue.prototype.$host = process.env.VUE_APP_HOST
Vue.prototype.$port = process.env.VUE_APP_PORT
new Vue({
  render: h => h(App),
}).$mount('#app')

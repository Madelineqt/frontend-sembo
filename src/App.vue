<template>
  <div id="app">
    <Header/>
    <List/>
    <Footer/>
  </div>
</template>

<script>
import 'bootstrap'; import 'bootstrap/dist/css/bootstrap.min.css';
import Header from './components/Header.vue'
import List from './components/List.vue'
import Footer from './components/Footer.vue'

export default {
  name: 'App',
  components: {
    Header,
    List,
    Footer
  }
}
</script>
<style>
  @import './assets/styles/style.css';
  @import './assets/styles/flags.css';
</style>
<style>

#app {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>

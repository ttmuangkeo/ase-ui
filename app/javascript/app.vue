<template>
  <div id="app">

    <header class="d-flex">
      <div class="v-align-middle">
        <i class="v-icon-signature"></i>
      </div>
      <div class="v-align-middle">
        blah..
      </div>
    </header>

    <section id="content-main">
      <div id="nav-container">
        <leftNav />
      </div>
      <div id="content">
        <router-view :key="$route.fullPath" />
      </div>
    </section>
    <footer class="">
      &copy; 2019 MoxiWorks
    </footer>

  </div>
</template>

<script>
  import LeftNav from './components/LeftNav';


  export default {
    data() {
      return {}
    },
    components: {
      LeftNav
    }
  }
</script>

<style scoped>
  header {
    padding: 10px 20px;
    color: #fff;
    background: #212e35;
    width: 100%;
    align-items: center;
  }
  header i {
    margin-right: 10px;
    font-size: 30px;
  }
  #content-main {
    position: relative;
    min-height: calc(100vh - 88px);
    max-height: calc(100vh - 88px);
  }
  #nav-container {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    width: 200px;
    overflow-x: hidden;
    overflow-y: auto;
    background: #ccc;
  }
  #content {
    position: absolute;
    top: 0;
    bottom: 0px;
    left: 200px;
    right: 0;
  }

  footer {
    color: #fff;
    background: #212e35;
    width: 100%;
    font-size: 10px;
    padding: 10px 20px;
  }
</style>

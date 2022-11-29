<template>
  <div>
    <Menu />

    <Header />

    <div class="auth-wrapper">
      <div class="auth-inner">
          <router-view></router-view>
      </div>
    </div>

    <Footer />
  </div>
</template>
<script>

import Menu from './components/MenuCom.vue';
import Header from './components/HeaderCom.vue';
import Footer from './components/FooterCom.vue'


export default {
    name: 'App',
    components: {
        Menu,
        Header,
        Footer
    },
}

</script>
<style>

</style>

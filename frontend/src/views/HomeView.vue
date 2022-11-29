<template>
  <div class="home">
    <HomeCom/>
    <ListProduct/>
  </div>
</template>

<script>
// @ is an alias to /src
import HomeCom from '@/components/HomeCom.vue'
import ListProduct from '@/components/ListProduct.vue'

export default {
  name: 'HomeView',

  components: {
    HomeCom,
    ListProduct,
  
  },
}
</script>

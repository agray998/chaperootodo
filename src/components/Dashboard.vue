<template>
  <div>

    <Header/>

    <Subhead/>

    <Tasklist/>
  
  </div>
</template>

<script>

import Subhead from './Subhead.vue';
import Header from './Header.vue';
import Tasklist from './Tasklist.vue';

export default {
  name: 'Dashboard',
  components: {
    Subhead,
    Header,
    Tasklist
  },
  props: {
    msg: String
  }
}

</script>


<style scoped>


</style>
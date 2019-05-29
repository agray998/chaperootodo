<template>
  <div>

    <Header/>

    <Subhead/>

    <NewTask/>

    <Tasklist/>
  
  </div>
</template>

<script>

import Subhead from './Subhead.vue';
import Header from './Header.vue';
import Tasklist from './Tasklist.vue';
import NewTask from './NewTask.vue';

export default {
  name: 'Dashboard',
  components: {
    Header,
    Subhead,
    NewTask,
    Tasklist,
  },
  props: {
    msg: String
  }
}

</script>


<style scoped>


</style>
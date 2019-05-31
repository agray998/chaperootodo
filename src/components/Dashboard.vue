<template>
  <div>

    <div class="headerbox">
      <Header/>
      <NewTask/>
    </div>

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

.headerbox{
  background: lightblue;
  margin: 0 4em;
  border-top-left-radius: 1em;  
  border-top-right-radius: 1em;
}

</style>
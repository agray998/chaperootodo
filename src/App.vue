<template>

  <div id="app">
    <Dashboard/>
  </div>

</template>

<script>

import Dashboard from './components/Dashboard.vue'

export default {
  name: 'app',
  components: {
    Dashboard    
  },
}

</script>

<style>

#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: red;
}

</style>

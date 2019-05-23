<template>

  <div id="app">
    <Dashboard msg="Welcome to Chaperoo To-Do"/>
  </div>

</template>

<script>

import Dashboard from './components/Dashboard.vue'
import axios from "axios";
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
  text-align: center;
  color: #0d7be9;
  margin-top: 60px;
}

</style>

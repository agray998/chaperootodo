<template>
  <div>

    <h1>{{ msg }}</h1>

    <Subhead/>

    <div v-for="task in tasks" v-bind:key="task.task_id">
      <Task :task="task"/>       
    </div>

  </div>
</template>

<script>

import axios from 'axios';
import Task from './Task.vue';
import Subhead from './Subhead.vue';

export default {
  name: 'Dashboard',
  components: {
    Task,
    Subhead
  },
  props: {
    msg: String
  },
  data(){
    return {
      tasks: []
    }
  },
  created:function(){
    this.getTasks();
  },
  methods: {
    getTasks: function(){
      axios.get("http://localhost:3000/task/gettasks").then((response)=>{
        this.tasks = response.data;       
      }).catch()
    }
  }
}

</script>


<style scoped>


</style>
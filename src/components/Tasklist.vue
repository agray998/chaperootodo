<template>
    <div class="tasklist">

    <div v-for="task in tasks" v-bind:key="task.task_id">
      <Task :task="task"/>       
    </div>

    </div>
</template>


<script>

import Task from './Task.vue';
import axios from 'axios';

export default {
    name: "Tasklist",
    components: {
      Task  
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

.tasklist{
    margin: 0 4em;
    padding: 0.5em;
    background: whitesmoke;
    border-bottom-left-radius: 1em; 
    border-bottom-right-radius: 1em;
}

</style>
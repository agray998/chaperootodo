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
    margin: auto;
    margin-top: 0em;
    padding: 0.5em;
    background: whitesmoke;
}

</style>
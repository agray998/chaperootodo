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
import { match } from 'minimatch';

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
    },
    deleteTask: function(id){
      axios.delete("http://localhost:3000/task/deleteone", {
        data: {task_id: id}
      }).then((response) => {
        this.tasks.forEach((task, index) => {
          if(task.task_id === id){
            this.tasks.splice(index, 1)
          }
        })
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
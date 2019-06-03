<template>
    <div class="tasklist">

      <NewTask/>

    <div v-for="task in tasks" v-bind:key="task.task_id">
      <Task :task="task"/>       
    </div>

    </div>
</template>


<script>

import Task from './Task.vue';
import NewTask from './NewTask.vue';
import axios from 'axios';

export default {
    name: "Tasklist",
    components: {
      Task, 
      NewTask
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
    },
    insertTask: function(input){
      axios.post("http://localhost:3000/task/insertone", {
        task: input
      }).then((response) => {
        this.getTasks()
      }).catch()
    }   
  }
}

</script>


<style scoped>

.tasklist{
    margin: 0 4em;
    padding: 0em;
    background: whitesmoke;
    border-bottom-left-radius: 1em; 
    border-bottom-right-radius: 1em;
}

</style>
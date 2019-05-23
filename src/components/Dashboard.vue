<template>
  <div class="dashboard">

    <h1>{{ msg }}</h1>
    <p class="subhead">
      The Perfect Task Management Solution
    </p>
    <p class="table" v-for="task in tasks" v-bind:key="task.task_id">
      {{ task.task_id }}
      {{ task.task }}
      {{ task.status }}
    </p>

  </div>
</template>

<script>

import axios from "axios";
export default {
  name: 'Dashboard',
  props: {
    msg: String,
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

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

h1 {
  margin: 40px 0 0;
      }

.table{
  color:black
}

</style>

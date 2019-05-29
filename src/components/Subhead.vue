<template>
    <div class="subhead">
   
      <p>
        The Perfect Task Management Solution
      
      <input v-model="message" placeholder="Enter a Task">

      <button class="add" v-on:click="insertTask(message)">
            <icon name="plus"></icon>
      </button> 

      </p>
      
    </div>
</template>


<script>

import axios from 'axios';
import Task from './Task.vue';

export default {
    name: 'Subhead',
    components: {
      Task
    },
    props: {
      newTask: {
        type: Object
      }
    },
    methods: {
      insertTask: function(input){
         axios.post("http://localhost:3000/task/insertone", {
           task: input
         }).then((response) => {
           alert(response.data)
         }).catch()
      }
    }
}

</script>


<style scoped>

.subhead {
  margin: auto;
  margin-block-start: 0.5em;
  max-width: 50em;
}

.subhead p {
  margin: 1em;
}

.subhead button.add {
  float: left;
  border-radius: 0.5em;
  margin: 0.3em
}

.subhead input{
  float:left;
  border: lightgray;
  border-width: 0.1em;
  border-style: solid;
  border-radius: 0.5em;
  margin: 0.3em;
  padding: 0.3em;
  width: 30em;
}

</style>
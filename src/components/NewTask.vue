<template>
    <div class="newtask">
         
      <input v-model="message" placeholder="Enter a Task">

      <button class="add" v-on:click="insertTask(message)">
            <icon name="plus"></icon>
      </button> 
      
    </div>
</template>


<script>

import axios from 'axios';

export default {
    name: 'NewTask',
    props: {
      newTask: {
        type: Object
      },
      message: String
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

.newtask button.add {
  border: none;
  border-radius: 0.5em;
  margin: 0.2em; 
  background: lightblue;
  position: absolute;
}

.newtask input{
  border: gray;
  border-width: 0.1em;
  border-style: solid;
  border-radius: 0.5em;
  padding: 0.5em;
  width: 50em;
  margin: auto;
}

.newtask{
  padding-bottom: 4em;
  text-align: center;
}

</style>
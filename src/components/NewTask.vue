<template>
    <div class="newtask">
         
      <input v-model="message" placeholder="Enter a Task..." v-on:keyup.enter="$parent.insertTask(message), resetInput()">

      <button class="add" v-on:click="$parent.insertTask(message), resetInput()">
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
      }
    },
    data(){
      return {
        message: ""
      }
    },
    methods: {
      resetInput: function(){
        this.message = ""
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
  color: gray;
  position: absolute;
}

.newtask input{
  border: gray;
  border-width: 0.1em;
  border-style: solid;
  border-radius: 0.5em;
  padding: 0.5em;
  width: 50%; 
  margin: auto;
}

.newtask{
  padding-bottom: 3em;
  padding-top: 2em;
  text-align: center;
  background: lightblue;
}

</style>
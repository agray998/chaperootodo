<template>
    <div class="newtask">
         
      <input v-model="message" placeholder="Enter a Task..." v-on:keyup.enter="$parent.insertTask(message), resetInput()">

      <select>
        <option value="">Choose Category</option>
        <option class="p"> Personal </option>
        <option class="w"> Work </option>
        <option class="hi"> High Importance </option>
        <option class="li"> Low Importance </option>
      </select>

      <button class="add" v-on:click="$parent.insertTask(message), resetInput()">
            <icon name="plus"></icon>
      </button> 
      
    </div>
</template>


<script>

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
  outline: none;
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
  outline: none;
  padding: 0.5em;
  width: 40%; 
  margin: auto;
}

.newtask select{
  border: gray;
  border-width: 0.1em;
  border-style: solid;
  border-radius: 0.5em;
  outline: none;
  background-color: white;
  color: gray;
  width: 12%; 
}

.newtask{
  padding-bottom: 3em;
  padding-top: 2em;
  text-align: center;
  background: lightblue;
}

</style>
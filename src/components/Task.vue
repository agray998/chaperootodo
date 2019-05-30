<template>
    <div class="task-card" v-bind:class="task.status">

        {{task.task_id}}
        {{task.task}}
        {{task.status}}
        
        <button class="delete" v-on:click="deleteTask(task.task_id)">
            <icon name="times"></icon>
        </button> 

        <button class="complete" v-on:click="completeTask(task.task_id)">
            <icon name="check"></icon>
        </button>     

    </div>
</template>


<script>

import axios from 'axios';

export default {
    name: 'Task',
    props: {
        task: {
            type: Object
        }
    },
    methods: {
        deleteTask: function(id){
            axios.delete("http://localhost:3000/task/deleteone", {
                data: {task_id: id}
            }).then((response) => {
                alert(response.data)
            }).catch()
        },
        completeTask: function(id){
            axios.put("http://localhost:3000/task/status", {
                task_id: id, status: "complete"
            }).then((response) => {
                alert(response.data)
                this.task.status = "complete"
            }).catch()
        }
    }
}

</script>


<style scoped>

.pending{
  color:grey;
}

.complete{
  color:lightgreen;
  text-decoration: line-through;
}

.task-card{
    border: lightgray;
    border-width: 0.1em;
    border-style: solid;
    margin: 1em;
    padding: 0.4em;
    border-radius: 0.5em;  
    font-weight: bold; 
}

.task-card button.delete{
    color: grey;
    float: right;
    margin: 0.12em;
    border-radius: 0.5em;
    background: whitesmoke;
    border: none;
}

.task-card button.complete{
    color: green;
    float: right;
    margin: 0.12em;
    border-radius: 0.5em;
    background: whitesmoke;
    border: none;
}

</style>
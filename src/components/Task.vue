<template>
    <div class="task-card" v-bind:class="task.status" v-on:dblclick="editTask(task.task_id, message)">

        {{task.task}}
        
        <button class="delete" v-on:click="deleteTask(task.task_id)">
            <icon name="times"></icon>
        </button> 

        <button class="edit" v-on:click="editTask(task.task_id, message)">
            <icon name="pencil-alt"></icon>
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
        },
        editTask: function(id, editedTask){
            axios.put("http://localhost:3000/task/edittask", {
                task_id: id, task: editedTask
            }).then((response) => {
                alert(response.data)
            }).catch()
        }
    }
}

</script>


<style scoped>

.pending{
  color:grey;
  font-weight: bold;
}

.complete{
  color:green;
  text-decoration: line-through;
}

.task-card{
    border-bottom: lightgray;
    border-bottom-width: 0.1em; 
    border-bottom-style: solid; 
    margin: 1em auto;
    padding: 0.4em;
    border-radius: 0.5em; 
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

.task-card button.edit{
    color: black;
    float: right;
    margin: 0.12em;
    border-radius: 0.5em;
    background: whitesmoke;
    border: none;
}

</style>
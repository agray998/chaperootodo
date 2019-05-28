<template>
    <div class="task-card" v-bind:class="task.status">

        {{task.task_id}}
        {{task.task}}
        {{task.status}}
        
        <button v-on:click="deleteTask(task.task_id)">
            del
        </button> 

        <button v-on:click="completeTask(task.task_id)">
            com
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
            }).then((response) => {alert(response.data)}).catch()
        },
        completeTask: function(id){
            axios.put("http://localhost:3000/task/status", {
                task_id: id, status: "complete"
            }).then((response) => {alert(response.data)}).catch()
        }
    }
}

</script>


<style scoped>

.pending{
  color:black;
}

.complete{
  color:green;
  text-decoration: line-through;
}

.task-card{
    border: lightgray;
    border-width: 0.1em;
    border-style: solid;
    margin: 1em;
    padding: 0.5em;
    border-radius: 0.5em;      
}

</style>
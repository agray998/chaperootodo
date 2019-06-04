<template>
    <div>

        <button class="delete" v-on:click="$parent.deleteTask(task.task_id)">
            <icon name="times"></icon>
        </button> 

        <button class="edit" v-on:click="toggleEdit(false)">
            <icon name="pencil-alt"></icon>
        </button>  

        <button class="complete" v-on:click="completeTask(task.task_id)">
            <icon name="check"></icon>
        </button> 

    </div>
</template>


<script>
export default {
    name: 'Buttons'    
}

</script>


<style scoped>

button.delete{
    color: grey;
    float: right;
    margin: 0.12em;
    border-radius: 0.5em;
    background: whitesmoke;
    border: none;
}

button.complete{
    color: green;
    float: right;
    margin: 0.12em;
    border-radius: 0.5em;
    background: whitesmoke;
    border: none;
}

button.edit{
    color: black;
    float: right;
    margin: 0.12em;
    border-radius: 0.5em;
    background: whitesmoke;
    border: none;
}

</style>
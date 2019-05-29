<template>
    <div class="subhead">
   
      <p>
        The Perfect Task Management Solution
      
      <button class="add">
            <icon name="plus"></icon>
      </button> 

      </p>

      

    </div>
</template>


<script>


export default {
    name: 'Subhead'
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
  margin: 0.12em
}

</style>
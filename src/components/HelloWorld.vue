<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    {{props}}
    <h2>Essential Links </h2>
    <ul>
      <li v-for="item in items">
      {{ item }}
    </li>
  </ul>
  </div>
</template>

<script lang="coffee">
export default
  name: 'HelloWorld'
  props:
    items:
      type: Array
      required: true
      default: ->
        ['rien','dispo']
"""
state:
  # Initial state of ${1:your store}

getters:
  # Getters to access ${1:your store} values


actions:
  # Asynchronous mutations commits to modify ${1:your store}


mutations:
  # Synchronous modifications of ${1: your store}
}

export default {
  state,
  getters,
  actions,
  mutations
}
"""
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  display: inline-block;
  margin: 0 10px;
}

a {
  color: #42b983;
}
</style>

<template>
    <range-picker v-model="ranges"/>
</template>

<script lang="coffee">
import RangePicker from './components/RangePicker.vue'

export default {
  name: 'app'
  components:
    RangePicker
  data:  =>
    ranges: [[1510245058399, 1510504353483]]

}
</script>

<style>

</style>

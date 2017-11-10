<template>
    <range-picker :value="ranges"/>
</template>

<script lang="coffee">
import RangePicker from './components/RangePicker.vue'

export default {
  name: 'app'
  components:
    "range-picker": RangePicker
  data:  =>
    ranges: [[1510182000000, 1510504353483], [1510700400000, 1511004353483]]

}
</script>

<style>

</style>

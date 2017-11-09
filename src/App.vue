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
    ranges: [[1510245058399, 1510504353483], [1510754353483, 1511004353483]]

}
</script>

<style>

</style>

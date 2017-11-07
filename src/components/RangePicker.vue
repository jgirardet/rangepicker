<template>
  <div class="rangepicker ui container">
    <div class="ui grid centered four columns wide">
  	<div class="rangepicker_month ui  centered aligned blue column" v-for="month in months">
      <div class="ui segments">
          <div class="rangepicker_monthtitle ui attached header ">
            {{month.getName()}}
          </div>
          <div class="rangepicker_days ui segment inverted">
            <div>lun</div>
            <div>mar</div>
            <div>mer</div>
            <div>jeu</div>
            <div>ven</div>
            <div>sam</div>
            <div>dim</div>
          </div>
          <div class="rangepicker_numbers">

          </div>
      </div>
    </div>
    </div>

</div>
</template>

<script lang="coffee">

import Month from './Month.coffee'

export default {
  props:
    'year':
      type: Number
      required: false
      default: ->
        return 2017
  data:  =>
    months: []

  mounted: ->
    @months = Month.createMonthsForYear(@year)

}
</script>

<style lang="scss">
.rangepicker_month {
  color: red;
}

</style>

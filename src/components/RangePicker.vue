<template>
  <div class="rangepicker ui container">
    <div class="ui four column grid centered">
      <div class="rangepicker_month ui  centered aligned blue column" v-for="month in months">
        <div class="ui segments">
          <div class="rangepicker_monthtitle  segment ui large header">
            {{month.getName()}}
          </div>

          <div class="ui horizontal segments equal width">
            <div class="ui segment" v-for="jour in jours">{{jour}}</div>
          </div>
          <div class="rangepicker_numbers ui horizontal segments  equal width">
            <div class="ui  segment" v-for="day in month.getDays()" >{{day}}</div>
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
        2017
  data:  =>
    months: []
    jours: ['lun', 'mar','mer','jeu','ven', 'sam','dim']

  mounted: ->
    @months = Month.createMonthsForYear(@year)

}
</script>

<style>
.ui.horizontal.segments.equal.width > .ui.segment {
    flex-grow: 1;
    color: reen;
    /*padding: 0;*/
    /*display: flex;*/
    flex-wrap: wrap;
}

</style>

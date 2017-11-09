<template>
  <div class="rangepicker ui two column relaxed   grid container">
      <div class="rangepicker_month ui   column" v-for="month in months">
        <div class="ui centered  grid">
          <div class="rangepicker_monthtitle   ui    row ">
            <h2 class="ui inverted red header">{{month.getName()}}</h2>
          </div>

          <div class="ui seven column equal width grey  row" id="listejour">
            <div class="ui column" v-for="jour in jours">{{jour}}</div>
          </div>
          <div class="rangepicker_numbers ui seven column equal width blue  row" >
            <div class="ui  centered  column"  v-for="day in month.getDays()" >
              <span :class="typeDeJour(day,month)">{{day.getDate()}}</span>
            </div>
          </div>


        </div>
      </div>
  </div>
</template>

<script lang="coffee">

import Month from './Month.coffee'
import Ranges from './Ranges.coffee'

export default {
  props:
    'year':
      type: Number
      required: false
      default: ->
        2017
    'value':
      type: Array

  data:  =>
    months: []
    jours: ['lun', 'mar','mer','jeu','ven', 'sam','dim']
    ranges: []

  methods:
    typeDeJour: (day, month) ->
      if day.getMonth() != month.month
        ["pasmois"]


  mounted: ->
    @months = Month.createMonthsForYear(@year)
    @ranges = Ranges.fromTimeStamps(@value)


}
</script>

<style>
#listejour {
    flex-wrap: nowrap;
}
#listejour > .ui.column {
  text-transform: capitalize;
  text-align: left;
}

.pasmois {
  color: red;
}
</style>

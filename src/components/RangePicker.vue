<template>
  <!-- <div class="rangepicker ui container">
    <div class="ui four column grid centered">
      <div class="rangepicker_month ui  centered aligned blue column" v-for="month in months">
        <div class="ui seven column grid centered">
          <div class="rangepicker_monthtitle ui fourteen column row large header">
            {{month.getName()}}
          </div>

          <div class="ui row">
            <div class="four wide column  " v-for="jour in jours">{{jour}}</div>
          </div>
          <!-- <div class="rangepicker_numbers ui horizontal segments  equal width">
            <div class="ui  segment" v-for="day in month.getDays()" >{{day}}</div>
          </div>

        </div>
      </div>
    </div>

  </div>
-->


  <div class="ui four column relaxed grid container">
    <div class="column">
        <div class="ui seven column grid container">
          <div class="ui row">
          <div class="j ui column">h</div>
          <div class="j ui column">h</div>
          <div class="j ui column">h</div>
          <div class="j ui column">h</div>
          <div class="j ui column">h</div>
          <div class="j ui column">h</div>
          <div class="j ui column">h</div>
          </div>
        </div>
      </div>
    <div class="ui column">hah</div>
    <div class="ui column">hah</div>
    <div class="ui column">hah</div>
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

/*.column {
  border-width: 1px;
  border-style: solid;
}*/

.jour {
  border-color: red;
  border-style: dashed;
}

.j {
  border-color: blue;
  border-style: dashed;
  border-width: 0.5px;;
}

</style>

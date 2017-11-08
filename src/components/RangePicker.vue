<template>
  <div class="rangepicker ui container">
    <div class="ui four column grid centered">
      <div class="rangepicker_month ui  centered aligned blue column" v-for="month in months">
        <div class="ui segments">
          <div class="rangepicker_monthtitle  segment ui large header">
            {{month.getName()}}
          </div>

          <div class="ui  horizontal segments equal width">
            <div class="segment">lun</div>
            <div class="segment">mar</div>
            <div class="segment">mer</div>
            <div class="segment">jeu</div>
            <div class="segment">ven</div>
            <div class="segment">sam</div>
            <div class="segment">dim</div>
          </div>
          <div class="ui horizontal  segments  equal width" v-for="n in 5">
            <div class="segment" v-for="n in 7" >{{n+5}}</div>
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

  mounted: ->
    @months = Month.createMonthsForYear(@year)

}
</script>

<style>
.ui.horizontal.segments.equal.width > .segment {
    flex-grow:1;
    width:0;
}

</style>

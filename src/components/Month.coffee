export default  class Month
  constructor: (@year, @month) ->
    @start = new Date @year, @month

  getName: ->
    @start.toLocaleString('fr-fr', month: 'long')

  @createMonthsForYear: (year) ->
    (new Month(year, i) for i in [0..11])

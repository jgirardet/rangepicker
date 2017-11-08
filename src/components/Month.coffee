export default  class Month
  constructor: (@year, @month) ->
    @start = new Date @year, @month

  getName: ->
    @start.toLocaleString('fr-fr', month: 'long')

  clone: (date) ->
    a = new Date @start.getTime()

  getDays: ->
    end  = @clone(@start)
    end.setMonth end.getMonth()+1
    end.setDate(0)
    (jour for jour in [1..end.getDate()])

  @createMonthsForYear: (year) ->
    (new Month(year, i) for i in [0..11])

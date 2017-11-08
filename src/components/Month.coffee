export default  class Month
  constructor: (@year, @month) ->
    @start = new Date @year, @month

  getName: ->
    @start.toLocaleString('fr-fr', month: 'long')

  clone: (date) ->
    new Date @start.getTime()

  getDays: ->
    end  = @clone(@start)
    end.setMonth end.getMonth()+1
    end.setDate(0)
    lesJours = (new Date(@year, end.getMonth(), jour) for jour in [1..end.getDate()])
    end.setDate(0)
    jourDeSemaine = end.getDay()
    if jourDeSemaine == 0
      jourDeSemaine = 7
    if jourDeSemaine != 1
      for e in [0..jourDeSemaine-1]
        x = new Date(end.getYear(), end.getMonth(), end.getDate()-e)
        lesJours.unshift(x)
    end.setMonth end.getMonth()+2
    end.setDate(1)


    tabTotal = lesJours.length
    reste =  7-tabTotal%7

    for e in [0..reste-1]
      x = new Date(end.getYear(), end.getMonth(), end.getDate()+e)
      lesJours.push(x)
    # console.log (x.toJSON() for x in lesJours)

    lesJours

  @createMonthsForYear: (year) ->
    (new Month(year, i) for i in [0..11])

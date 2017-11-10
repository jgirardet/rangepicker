import Range from './Range.coffee'

export default class Ranges
  constructor: (@ranges) ->
    # console.log @ranges

  @fromTimeStamps: (ranges) ->

      rr = (new Range(new Date(range[0]), new Date(range[1]))  for range in ranges)
      new Ranges(rr)


  dayInRange: (day) ->
      for r in @ranges
        console.log r.getStart(), "\n"+day+"\n"+r.getEnd()
        if r.getStart() <= day <= r.getEnd()
          return true
      return false

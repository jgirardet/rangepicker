import Range from './Range.coffee'

export default class Ranges

  constructor: (@ranges) ->
    # console.log @ranges

  @fromTimeStamps: (ranges) ->
    console.log ranges

    a = (new Range(new Date(range[0]), new Date(range[1]))  for range in ranges)
    console.log a
    a

Batman.Filters.percent = (a) ->
  a + '%'

class Dashing.Percent extends Dashing.Widget
  @accessor 'value', Dashing.AnimatedValue

  constructor: ->
    super
    @observe 'value', (value) ->
      $(@node).find(".percent").val(value).trigger('change')

  ready: ->
    percent = $(@node).find(".percent")
    percent.attr("data-bgcolor", percent.css("background-color"))
    percent.attr("data-fgcolor", percent.css("color"))
    percent.knob()

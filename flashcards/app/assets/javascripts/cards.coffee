# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

autoSizeText = ->
    elements = $('.card')
    return if elements.length < 0

    for el in elements
      do (el) ->
        
        resizeText = ->
          elNewFontSize = (parseInt($(el).css('font-size').slice(0, -2)) - 1) + 'px'
          $(el).css('font-size', elNewFontSize)

        resizeText() while el.scrollHeight > el.offsetHeight
            
$(document).ready -> autoSizeText()


# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

result = ->
  $('.calculator')
    .bind 'ajax:success', (e, data, status, xhr) ->
      $('.calculator').hide()
      response = $.parseJSON(xhr.responseText)
      message = JST['templates/result']({ delivery_from: response.from, delivery_to: response._to, calculation: response.calc })
      $('.message').append(message)

call_to_new_calculation = ->
  $('.want_more').on 'click', (e) ->
    e.preventDefault()
    $('.calculator').show()

$(document).on 'turbolinks:load', () ->
  result()

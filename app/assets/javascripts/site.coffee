
$(document).on 'ready page:load', ->

  if $('.show-message').length > 0
    setTimeout ->
      $('.show-message').removeClass('show-message')
    , 4000

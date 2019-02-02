ready = ->
  new Typed '.element',
    strings: [
      'Software devleopment at its finest'
      'Only from the best'
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load'


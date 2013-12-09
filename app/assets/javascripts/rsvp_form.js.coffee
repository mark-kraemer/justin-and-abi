@RsvpForm = class RsvpForm

  constructor: ->
    $('.yes').on 'click', (e) ->
      $('#guest_head_count').show().focus()
      $('#pasta_message').show()

    $('.no').on 'click', (e) ->
      $('#guest_head_count').hide().val('')
      $('#pasta_message').hide()

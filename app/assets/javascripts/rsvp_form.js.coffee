@RsvpForm = class RsvpForm

  constructor: ->
    $('.yes').on 'click', (e) ->
      $('#guest_head_count').show().focus()

    $('.no').on 'click', (e) ->
      $('#guest_head_count').hide().val('')


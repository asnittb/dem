jQuery ->
  Stripe.setPublishableKey($('meta[name="stripe_key"]').attr('content'))
  payment.setupForm()
  
payment =
  setupForm: ->
    $('#new_order').submit ->
      $('input[type=submit]').attr('diabled', true)
      Stripe.card.createToken($('#new_order'), payment.handleStripeResponse)
      false
      
  handleStripeResponse: (status, response) ->
    if status == 200
      alert(response.id)
    else
      alert(response.error.message)
        
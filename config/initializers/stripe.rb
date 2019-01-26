Rails.configuration.stripe = {
    :publishable_key => ENV['PUBLISHABLE_KEY'],
    :secret_key      => "sk_test_PscYIf5r4SV7kaQfPuhz7sbo"
  }
  
Stripe.api_key = Rails.configuration.stripe[:secret_key]
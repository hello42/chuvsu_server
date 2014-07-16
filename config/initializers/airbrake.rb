Airbrake.configure do |config|
  config.api_key = '74a7c7bc7378c6169595ca4b835f1236'
  config.host    = "http://errbitgg.herokuapp.com"
  config.port    = 80
  config.secure  = config.port == 443
  #config.environment_name = Rails.env.production? ? `hostname` : Rails.env
end

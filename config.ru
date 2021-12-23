require_relative "./config/environment"


# Allow CORS (Cross-Origin Resource Sharing) requests
use Rack::Cors do
  allow do
    origins '*'
    # origins 'localhost:3000'
    resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
  end
end


# Parse JSON from the request body into the params hash
use Rack::JSONBodyParser

# Our application
run ApplicationController

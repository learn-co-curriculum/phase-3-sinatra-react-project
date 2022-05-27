require_relative "./config/environment"

require_relative './app/controllers/neighborhood_controller'
require_relative './app/controllers/household_controller'
require_relative './app/controllers/member_controller'
require_relative './app/controllers/application_controller'

# Allow CORS (Cross-Origin Resource Sharing) requests
use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
  end
end

# Parse JSON from the request body into the params hash
use Rack::JSONBodyParser

# Our application
run ApplicationController
use NeighborhoodController
use HouseholdController
use MemberController



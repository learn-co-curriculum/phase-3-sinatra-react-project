require_relative "./config/environment"

# Allow CORS (Cross-Origin Resource Sharing) requests
use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
  end
end

# Parse JSON from the request body into the params hash
use Rack::JSONBodyParser

# use Rack::Session::Cookie, :key => 'session',
#     :path => '/',
#     :expire_after => 2592000,
#     :secret => 'cs-secret'

# Our application
run ApplicationController

use UsersController

use PostsController

use CommentsController

use UsersPostsController


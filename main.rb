require 'json'
require 'jwt'
require 'sinatra/base'

class JwtAuth

    def initialize app
      @app = app
    end
  
    def call env
      begin
        options = { algorithm: 'HS256', iss: ENV['JWT_ISSUER'] }
        bearer = env.fetch('HTTP_AUTHORIZATION', '').slice(7..-1)
        payload, header = JWT.decode bearer, ENV['JWT_SECRET'], true, options
  
        env[:scopes] = payload['scopes']
        env[:user] = payload['user']
  
        @app.call env
      rescue JWT::DecodeError
        [401, { 'Content-Type' => 'text/plain' }, ['A token must be passed.']]
      rescue JWT::ExpiredSignature
        [403, { 'Content-Type' => 'text/plain' }, ['The token has expired.']]
      rescue JWT::InvalidIssuerError
        [403, { 'Content-Type' => 'text/plain' }, ['The token does not have a valid issuer.']]
      rescue JWT::InvalidIatError
        [403, { 'Content-Type' => 'text/plain' }, ['The token does not have a valid "issued at" time.']]
      end
    end
  
  end

class Api < Sinatra::Base

    use JwtAuth

  def initialize
    super

    @accounts = {
      chrisli: 10000,
      altiglesia: 50000,
      chriserlendson: 1000000000
    }
  end

  get '/money' do
    scopes, user = request.env.values_at :scopes, :user
    username = user['username'].to_sym

    if scopes.include?('view_money') && @accounts.has_key?(username)
      content_type :json
      { money: @accounts[username] }.to_json
    else
      halt 403
    end
  end
end

class Public < Sinatra::Base

  def initialize
    super

    @logins = {
      chrisli: 'needmoresleep',
      altiglesia: 'imsofunny',
      chriserlendson: 'chriscodecrew'
    }
  end

  post '/login' do
    username = params[:username]
    password = params[:password]

    if @logins[username.to_sym] == password
      content_type :json
      {token: token(username)}.to_json
    #   { message: "You logged in. Yay you!" }.to_json
    else
      halt 401
    end
  end

  def token username
    JWT.encode payload(username), ENV['JWT_SECRET'], 'HS256'
  end

  def payload username
    {
      exp: Time.now.to_i + 60,
      iat: Time.now.to_i,
      iss: ENV['JWT_ISSUER'],
      scopes: ['add_money', 'remove_money', 'view_money'],
      user: {
        username: username
      }
    }
  end



end
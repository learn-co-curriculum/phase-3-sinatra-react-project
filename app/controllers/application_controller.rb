class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  before do
    if token = request.env['HTTP_TOKEN']
      @user = User.find_by(token: token)
    end
  end

  def check_login
    return true if @user
  end
end

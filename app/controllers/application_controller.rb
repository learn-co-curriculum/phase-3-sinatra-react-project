class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  private

  def logged_in(user_id:, login_token:, application_id: nil)
    user = User.find_by(id: user_id)
    if user_id == nil
      {success: false, message: 'You are not logged in.'}
    elsif !user
      {success: false, message: 'User not found.'}
    elsif User.current(login_token: login_token) == user
      if !application_id || user.applications.find_by(id: application_id)
        {success: true, username: user.username}
      else
        {success: false, message: 'You do not have permission to edit this application.'}
      end
    else
      {success: false, message: 'You are not logged in.'}
    end
  end
end

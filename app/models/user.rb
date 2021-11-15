class User < ActiveRecord::Base
  has_many :applications

  def self.add_user(username:, password:)
    if User.find_by(username: username) == nil
      salt = BCrypt::Engine.generate_salt
      hash = BCrypt::Engine.hash_secret password, salt
      create(username: username, password_hash: hash, password_salt: salt)
      User.login(username: username, password: password)
    else
      {sucess: false, message: "This username already exists."}
    end
  end

  def self.login(username:, password:)
    user = User.find_by(username: username)
    if user && BCrypt::Engine.hash_secret(password, user.password_salt) == user.password_hash
      user.update(login_token: SecureRandom.uuid, login_time: DateTime.now)
      {success: true, user_id: user.id, login_token: user.login_token}
    else
      {success: false, message: "Invalid credentials."}
    end
  end

  def self.current(login_token:)
    user = User.find_by(login_token: login_token)
    return nil if user == nil || user.login_time == nil
    if (DateTime.now.to_time - user.login_time) / 1.hours < 1
      user
    else
      user.logout
      nil
    end
  end

  def logout
    update(login_token: nil, login_time: nil)
    {success: true, message: "Successfully logged out."}
  end
end
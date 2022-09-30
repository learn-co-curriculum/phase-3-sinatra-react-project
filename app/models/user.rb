class User < ActiveRecord::Base
  has_many :reviews
  has_many :businesses, through: :reviews

  def initialize_session_cookie
    update(session_cookie: (0...32).map { ([65, 97].sample + rand(26)).chr }.push(rand(99)).join)
  end

  def validate_session_cookie(test_cookie)
    test_cookie == session_cookie
  end
end

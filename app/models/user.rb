class User < ActiveRecord::Base
    has_many :messages

     # Validation rules
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }

  # Authenticate user with password
  def authenticate(password)
    self.password == password
  end

  def send_message(content, recipient)
    messages.create(content: content, recipient: recipient)
  end

  def received_messages
    Message.where(recipient: self)
  end
    
end
class Chatroom < ActiveRecord::Base
    has_many :messages, dependent: :destroy
    has_many :users, through: :messages

    def test_method
        puts "hello world!"
    end
end
class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  def average_score
    reviews.average(:score).to_f.round(2)
  end

  def self.reviewed_by(user_id)
    # Review.where(user_id: user_id).map { |r| r.restaurant }
    select { |r| r.reviews.where(user_id: user_id).count > 0 }
  end

  def self.reviewed_by_friends(user_id)
    reviewed_restaurants = []
    User.find(user_id).following.each do |friend|
      reviewed_restaurants |= reviewed_by(friend.id)
    end
    reviewed_restaurants
  end
end

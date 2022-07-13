class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  def average_score
    reviews.average(:score).to_f.round(2)
  end
end

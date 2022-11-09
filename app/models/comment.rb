<<<<<<< HEAD
class Comment <ActiveRecord::Base
    has_many :posts
    has_many :users,through: :posts
=======
class Comment < ActiveRecord::Base
  has_many :posts
  has_many :users,through: :posts
>>>>>>> 235b971c5a9dad1f2779829ee36a78c7256abada
end

require 'pry'
class User < ActiveRecord::Base
  has_many :likes
  has_many :likes_as_liked, class_name: 'Like', foreign_key: :liked_user_id
  has_many  :liked_users, through: :likes,  source: :liked_user
  has_many :admirers, through: :likes_as_liked, source: :user

  # has_many  :liked_users, through: :likes,  source: :user
  # has_many :matches, through: :likes



    def age
        return nil if self.birthdate.nil?
        days_old = (Date.today - self.birthdate).to_i.days
        if days_old < 30.days
          weeks_old = days_old.in_weeks.floor
          "#{weeks_old} #{'week'.pluralize(weeks_old)}"
        elsif days_old < 365.days
          months_old = days_old.in_months.floor
          "#{months_old} #{'month'.pluralize(months_old)}"
        else
          years_old = days_old.in_years.floor
          "#{years_old} #{'year'.pluralize(years_old)}"
        end
      end

      def has_liked (other_person_id)
        # liked_people = []
      
        # If she likes him, and he likes her then create a match
        # binding.pry
        test = Like.where(user_id: other_person_id , liked_user_id: self.id).first
        # print test
        if test #create a match
          newLike = Like.create(user_id:self.id, liked_user_id: other_person_id )
          Match.create(likes_id_1:test.id , likes_id_2:newLike.id, user_id_1:self.id, user_id_2:other_person_id)
        elsif
          # create a like 
          create_like_instance = Like.create(user_id: self.id, liked_user_id: other_person_id)
          create_like_instance
        end
        # Like.find_by(like => like.user_id == self.id && like.liked_user_id == other_person_id)
        # if User.likes.find(other_person_id)
        #   Match.create(likes_id_1: self.id, likes_id_2: other_person_id)
        # elsif 
        #   # if other_person_id doesnt already exist in the array, push it into array
        #   Like.create()
        # end
        
      end
    
end
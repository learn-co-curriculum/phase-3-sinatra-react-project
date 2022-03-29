class Upvote < ActiveRecord::Base
    belongs_to :box

    def self.top
        Upvote.all.max {|up1, up2| up1.amount <=> up2.amount}
    end

  end


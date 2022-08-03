require 'time'
require 'set'

class Canvasboard < ActiveRecord::Base
has_many :collaborations
has_many :users, through: :collaborations
has_many :canvaspaths, :dependent => :delete_all

def get_canvas_points_and_format(last_timestamp = nil)
  canvaspaths = self.canvaspaths
  if last_timestamp != nil
    canvaspaths = canvaspaths.where('created_at > ?', last_timestamp.to_datetime);
  end
  canvaspaths = canvaspaths.order('created_at ASC')

  canvaspathsResult = []
  canvaspaths.each do |pathdata|
    if last_timestamp && pathdata.created_at.to_datetime.iso8601(3) == last_timestamp.to_datetime.iso8601(3)
      next #exit current loop and continue to the next
    end

    format_path = JSON.parse(pathdata.data)
    if !format_path
      next
    end
    
    format_path[:metadata] = {  
      id: pathdata.id,
      user_id: pathdata.user_id,
      uuid: pathdata.uuid,
      created_at: pathdata.created_at
    }
    canvaspathsResult << format_path
  end 

  canvaspathsResult
end

def clear_canvas_paths
  self.canvaspaths.destroy_all
end

def self.show_all_canvas_boards_for_that_user(user_id)
  all_boards_set = Set[] 
  result = []
  found_boards_matching_the_user = self.all.where(user_id: user_id)
  found_boards_matching_the_user.each do |board| 
    result << board
    all_boards_set.add(board.id)
  end

  self.all.each do |board| 
    user = board.canvaspaths.group(:user_id).find_by(user_id: user_id)
    if user && !all_boards_set.include?(board.id)
      result << board
    end
  end

  return result
end

def as_json(options = {})
  h = super(options).merge({:canvas_paths => get_canvas_points_and_format})
end
# We are getting get_canvas_points_and_format and insert it into canvas_path, then converting it into json 


def collaborators 
  collabs = self.collaborations
  collabs.all.map(item => item.user)
end


end

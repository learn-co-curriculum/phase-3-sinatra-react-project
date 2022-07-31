require 'time'

class Canvasboard < ActiveRecord::Base
belongs_to :user
has_many :canvaspaths

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



end

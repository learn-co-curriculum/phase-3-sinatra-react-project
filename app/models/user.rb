class User < ActiveRecord::Base
has_many :canvasboards
has_many :canvaspaths

end
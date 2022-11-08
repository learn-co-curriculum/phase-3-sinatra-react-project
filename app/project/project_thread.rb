class ProjectThread < ApplicationRecord
    belongs_to :project
    belongs_to :user
    has_many :messages, :dependent => :destroy
    validates :topic, :description, presence: true, length: {minimum: 5}
  end
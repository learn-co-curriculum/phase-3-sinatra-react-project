class Project < ApplicationRecord
    belongs_to :user
    has_many :attachments, :dependent => :destroy
    # has_many :project_threads, :dependent => :destroy
    has_many :tasks, :dependent => :destroy
    has_many :project_users, :dependent => :destroy
    validates :title, presence: true, length: {minimum: 5}
    validates :user_id, :description, presence: true, length: {minimum: 1}
    validates :description, presence: true, length: {minimum: 10}
  end
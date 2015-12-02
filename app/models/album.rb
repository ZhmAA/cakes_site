class Album < ActiveRecord::Base
  dragonfly_accessor :image
  has_many :pictures
  validates :meta_title, presence: true, uniqueness: true, :length => { :maximum => 60 }
  validates :meta_description, presence: true, uniqueness: true, :length => { :maximum => 150 }
end

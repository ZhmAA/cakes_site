class Album < ActiveRecord::Base
	
	dragonfly_accessor :image

	has_many :pictures

end

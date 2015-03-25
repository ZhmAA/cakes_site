class Picture < ActiveRecord::Base
	
	dragonfly_accessor :picimage

	belongs_to :album
end

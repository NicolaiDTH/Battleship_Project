require 'debugger'
require_relative 'water'

class Cell

    def initialize
    	@contents = Water.new
    end

	attr_accessor :local_ship_status, :contents

	def place_ship!(ship)
		self.contents = ship
		@local_ship_status = "S"
	end

	def place_water!(water)
		self.contents = water
	end

	def has_water?
		self.contents.is_a? Water
	end

	def has_been_hit?
		self.contents.hit?
	end

	def has_ship?
  	 	self.contents.is_a? Ship
	end

	def receive_hit
		self.contents.receive_hit
		@local_ship_status=("H")
	end 

	def to_s
		return self.contents.to_s if self.contents.class == Water
		@local_ship_status
	end

end

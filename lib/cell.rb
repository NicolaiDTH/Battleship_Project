class Cell

	def initialize
		@contents = Water.new
	end

	def contents
		@contents
	end

	def place_ship!(ship)
		@contents = ship
	end

	def place_water!(water)
		@contents = water
	end

	def has_water?
		@contents.is_a? Water
	end

	def has_been_hit?
		@contents.hit?
	end

	def has_ship?
  	 	@contents.is_a? Ship
	end

	def receive_hit
		@contents.receive_hit
	end

end

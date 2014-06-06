class Cell

	def initialize
		@status = Water.new
	end

	def status
		@status
	end

	def place_ship!(ship)
		@status = ship
	end

	def place_water!(water)
		@status = water
	end

	def has_water?
		@status.is_a? Water
	end

	def has_been_hit?
		@status.hit?
	end

	def has_ship?
    @status.is_a? Ship
	end

	def receive_hit
		@status.receive_hit
	end

end

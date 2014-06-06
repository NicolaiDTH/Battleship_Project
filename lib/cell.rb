class Cell

	def initialize
		@status = :empty
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


end

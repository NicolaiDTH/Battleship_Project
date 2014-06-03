=begin
Type of ship	Size
aircraft carrier	5
battleship	4
submarine	3
destroyer 3
patrol boat	2
=end


class Ship

	def initialize(size)
		raise "Ship must be 2-5 squares" if size < 2 or size > 5
		@size = size
	end

	def hit?
		@hit
	end

	def sunk?
		false
	end

	def size
		@size
	end

	def receive_hit
		damage
		damage += 1
	end

	def damage
		@damage ||= 0
	end

	

end


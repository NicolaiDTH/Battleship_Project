=begin
Type of ship	Size
aircraft carrier	5
battleship	4
submarine	3
destroyer 3
patrol boat	2
=end



class Ship

	attr_accessor :damage

	def initialize(size)
		raise "Ship must be 2-5 squares" if size < 2 or size > 5
		@damage = 0
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
		@damage += 1
		sink if going_critical
	end

	def going_critical
		damage == size
	end

	def report_sink_to(game_instance)
		game_instance.ship_down
	end

end


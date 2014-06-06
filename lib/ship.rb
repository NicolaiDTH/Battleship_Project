=begin
Type of ship	Size
costa concordia (2)		5
titanic (269m)	4
rms lusitania (239m)	3
uss thresher (85m)		3
mary rose (32m)	2
=end


class Ship

	attr_accessor :damage
	attr_reader :size

	def initialize(size)
		raise "Ship must be 2-5 squares" if size < 2 or size > 5
		@damage = 0
		@size = size
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


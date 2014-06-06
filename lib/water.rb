class Water

	def initialize
		@calm = true
	end

	def calm?
		@calm == true
	end

	def receive_hit
		@calm = false
	end

	def to_s
		"~"
	end
end
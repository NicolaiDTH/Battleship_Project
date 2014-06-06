class Water

	def initialize
		@hit = false
	end

	def hit?
		@hit == true
	end

	def receive_hit
		@hit = true
	end

	def to_s
		return "~" unless hit?
		"*"
	end

end
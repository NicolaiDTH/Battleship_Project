require 'ship'

describe Ship do
	
	let (:ship) { Ship.new(2) }

	context 'A ship' do

		it 'can be two elements long' do
			expect(ship.size).to eq 2
		end

		it 'can be three elements long' do
			sloop = Ship.new(3)
			expect(sloop.size).to eq 3
		end

		it 'cannot be less than 2' do
			expect{Ship.new(1)}.to raise_error RuntimeError
		end

		it 'cannot be greater than 5' do
			expect{Ship.new(6)}.to raise_error RuntimeError
		end

		it 'will be sunk when all her cells are hit' do
			expect(ship).to receive(:sink)
			ship.size.times {ship.receive_hit}
		end

		it "will not be sunk when hit up to 1 less times than its size" do
			expect(ship).not_to receive(:sink)
			(ship.size)-1.times {ship.receive_hit}
		end
		
		it "reports whether it's sunk" do
			game = double :game
			expect(game).to receive(:ship_down) 
			ship.report_sink_to(game)
			#expect game to receive summit when ship.sink = true, how this?  
		end

		it 'displays itself as "S"' do
			expect(ship.to_s).to eq "S"
		end

	end
end

		# it 'cannot take a hit on a hit cell' do
		# 	expect(ship).to raise_error RuntimeError
		# end



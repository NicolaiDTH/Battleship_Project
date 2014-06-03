require 'ships'

describe Ship do
	
	let (:ship) { Ship.new(2) }

	context 'A ship' do
		
		it 'is not hit when instantiated' do
			expect(ship).not_to be_hit
		end

		xit 'can be hit' do
			ship.receive_hit 
			expect(ship).to be_hit
		end

		it 'can be non-sunk' do
			expect(ship).not_to be_sunk
		end

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

		it 'will be sunk only when all her cells are hit' do
			expect(ship).to receive(:become_sinkered)
			ship.size.times {ship.receive_hit}
		end

		# it 'is sunk when hit' do
		# 	ship.receive_hit
		# 	expect(ship).to be_sunk
		# end



	end
end
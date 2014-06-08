require 'water'

describe Water do

	let(:water){Water.new}
	
	it 'can be lacking in explosives' do
		expect(water.hit?).to be_false
	end

	it 'can be explodey like without a ship and stuff' do
		water.receive_hit
		expect(water.hit?).to be_true
	end

	it 'can be represented in the grid as a ~ in a string' do
		expect(water.to_s).to eq "~"
	end

	it 'can be represented in the grid as a * in a string when hit' do
		water.receive_hit
		expect(water.to_s).to eq "*"
	end

end
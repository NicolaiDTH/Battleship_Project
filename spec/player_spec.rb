require 'player'
require 'grid'

describe Player do 
	let(:grid) { Grid.new } 
	let(:brandon) { Player.new(grid) }
	let(:vespa) {Vespa.new}

	it 'takes a grid of his own' do
		expect(brandon.grid).to eq grid
	end

	it 'can hold ships' do
		brandon.receive_ships(vespa)
		expect(brandon.remaining_ships).to include(vespa)
	end

	xit 'is prompted to place ships' do
		expect(S)
		brandon.prompt
	end

	it 'specifies what ship to place' do
		expect(brandon).to receive(:user_input)
		brandon.specify_ship
	end

	it 'specifies what starting tile to place it on' do
		expect(brandon).to receive(:user_input)
		brandon.specify_starting_coord
	end

	it 'specifies whether to place it horizontally or vertically' do
		expect(brandon).to receive(:user_input)
		brandon.specify_orientation
	end

	it 'gets all three at once' do
		brandon.receive_ships(vespa)
		allow(brandon).to receive(:specify_ship).and_return("vespa")
		allow(brandon).to receive(:specify_starting_coord).and_return("a1")
		allow(brandon).to receive(:specify_orientation).and_return("H")
		expect(brandon.grid).to receive(:place_whole_ship).with("A1", "horizontal", vespa)
		brandon.place_ship
	end
	
end
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
		expect(brandon).to receive(:user_input).and_return "wibble"
		brandon.specify_ship
	end

	it 'specifies what starting tile to place it on' do
		expect(brandon).to receive(:user_input)
		brandon.specify_starting_coord
	end

	it 'specifies whether to place it horizontally or vertically' do
		expect(brandon).to receive(:user_input).and_return "wibble"
		brandon.specify_orientation
	end

	it 'gets user input' do
		# allow(brandon).to receive(:user_input).and_return "wibble"
		# expect(STDIN).to receive(:gets).and_return "wibble\n"
		# brandon.user_input

		allow(brandon).to receive(:gets) {"A1"}

		puts "hello"
		puts brandon.user_input
		expect(brandon.user_input).to eq("A1")

	end

	it 'gets all three at once' do
		brandon.receive_ships(vespa) 
		allow(brandon).to receive(:user_input).and_return("a1","H","vespa")
		expect(brandon.grid).to receive(:place_whole_ship).with("A1", "horizontal", vespa)
		brandon.place_ship
	end

	it 
	
end
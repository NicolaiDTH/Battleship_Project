require 'cell'


describe Cell do

	let(:cell) {Cell.new}

	it 'should be able to hold a ship' do
		ship = double :ship
		cell.place_ship!(ship)
		expect(cell.contents).to eq ship
	end

	it 'should be able to hold water' do
		water = double :water
		cell.place_water!(water)
		expect(cell.contents).to eq water
	end

	it 'should be able to display its contents in one character' do
		water = Water.new
		cell.place_water!(water)
		expect(water).to receive(:to_s)
		cell.to_s
	end

	it 'displays as H after a ship in it gets hit' do
		ship = double :ship, receive_hit: true
		cell.place_ship!(ship)
		cell.receive_hit
		expect(cell.to_s).to eq 'H'
	end

end
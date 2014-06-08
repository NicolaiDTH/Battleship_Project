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


end
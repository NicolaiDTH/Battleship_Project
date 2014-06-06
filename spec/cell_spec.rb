require 'cell'


describe Cell do

	let(:cell) {Cell.new}

	it 'should be empty when initialized' do
		expect(cell.status).to eq :empty
	end

	it 'should be able to hold a ship' do
		ship = double :ship
		cell.place_ship!(ship)
		expect(cell.status).to eq ship
	end

	it 'should be able to hold water' do
		water = double :water
		cell.place_water!(water)
		expect(cell.status).to eq water
	end


end
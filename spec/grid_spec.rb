require 'grid'
require 'ships'

describe Grid do 

	let(:grid) { Grid.new }
	let(:ship) {Ship.new(2)}

	context 'starts with' do
	
		it 'initializes with at least one row' do
			expect(grid.board.length).to be > 0
		end

		it 'initializes every row having 10 cells' do
			grid.board.each do |row|
				expect(row.length).to eq 10
			end
			#expect(grid.board.all? {|row| row.length == 10}).to eq(true)
		end

	end
	context 'cells can have different states' do

		it 'can be non-hit non-ship' do
			expect(grid.board[0][9]).to eq nil
		end	

		it 'can be hit non-ship' do
			grid.receive_shot(0,9)
			expect(grid.board[0][9]).to eq :M
		end

		it 'can be non-hit ship' do
			grid.place_ship(1,2, ship)
			expect(grid.board[1][2]).to eq ship
		end

		it 'can be a hit ship' do
			grid.place_ship(1,2, ship)
			grid.receive_shot(1,2)
			expect(grid.board[1][2]).to eq :H
		end

		it 'can tell a ship it is hit' do
			grid.place_ship(1,2, ship)
			expect(ship).to receive(:receive_hit) 
			grid.receive_shot(1,2)
		end

	end

	context 'that grid can accept ships' do

		it 'knows that a ship size equals cell size' do
			expect(grid.check_ship_size(ship)).to eq ship.size
		end

	end

# context 'ships cannot occupy the same space' do
	# end

end

		# it 'can have a state of occupied' do
		# 	ship = double :ship
		# 	expect(grid.board[0][0]).to eq ship
		# end



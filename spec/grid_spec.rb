require 'grid'
require 'ships'

describe Grid do 

	let(:grid) { Grid.new }
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
			ship = Ship.new(2)
			grid.place_ship(1,2, ship)
			expect(grid.board[1][2]).to eq ship
		end

		it 'can be a hit ship' do
			ship = Ship.new(2)
			grid.place_ship(1,2, ship)
			grid.receive_shot(1,2)
			expect(grid.board[1][2]).to eq :H
		end

	end
end

		# it 'can have a state of occupied' do
		# 	ship = double :ship
		# 	expect(grid.board[0][0]).to eq ship
		# end



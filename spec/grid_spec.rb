require 'grid'
require 'ships'
# require 'debugger'

describe Grid do 

	let(:grid) { Grid.new }
	let(:ship) {Ship.new(2)}
	before(:each) { grid.place_ship_tile(1,2, ship) }
	let(:shot_test) { grid.receive_shot(1,2) }

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
			expect(grid.board[1][2]).to eq ship
		end

		it 'can be a hit ship' do
			shot_test
			expect(grid.board[1][2]).to eq :H


		end

		it 'can tell a ship it is hit' do
			expect(ship).to receive(:receive_hit) 
			shot_test 
		end

	end

	context 'grid can place ships' do

		it 'knows that a ship size equals cell size' do
			expect(grid.ship_number_of_tiles(ship)).to eq ship.size
		end

		# it 'checks whether two coordinates are on the same row, same column, or neither' do
		# 	expect(grid.ship_orientation(0,0,1,0)).to eq :vertical
		# end

		it 'places a ship either vertically or horizontally (up>down or left>right) on the right no. of tiles' do
			titanic = Ship.new(5)
			grid.place_whole_ship(0, 0, "vertical", titanic)
			expect(grid.board[0][0]).to eq titanic
			expect(grid.board[1][0]).to eq titanic
			expect(grid.board[2][0]).to eq titanic
			expect(grid.board[3][0]).to eq titanic
			expect(grid.board[4][0]).to eq titanic
		end

	end

# context 'ships cannot occupy the same space' do
	# end

end

		# it 'can have a state of occupied' do
		# 	ship = double :ship
		# 	expect(grid.board[0][0]).to eq ship
		# end



require 'grid'

describe Grid do 

	let(:grid) { Grid.new }
	context 'starts with' do
	
		# it '10 columns' do
		# 	grid.populate_1d(grid.board)
		# 	expect(grid.board.length).to eq 10
		# end

		# it '10 rows' do
		# 	grid.populate_1d(grid.board)
		# 	grid.populate_2d(grid.board)
		# 	expect(grid.board.all? {|row| row.length == 10}).to be_true
		# end

		it 'initializes with at least one row' do
			expect(grid.board.length > 0).to be_true
		end

		it 'initializes every row having 10 cells' do
			expect(grid.board.all? {|row| row.length == 10}).to be_true
		end
	end

	context 'elements can have different states' do
	
		# it 'can have a state of occupied' do
		# 	ship = double :ship
		# 	expect(grid.board[0][0]).to eq ship
		# end

	end

end

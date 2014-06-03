require 'grid'

describe Grid do 

	let(:grid) { Grid.new }
	context 'starts with' do
	
		it '10 columns' do
			grid.populate_1d(grid.board)
			expect(grid.board.length).to eq 10
		end

		it '10 rows' do
			grid.populate_1d(grid.board)
			grid.populate_2d(grid.board)
			expect(grid.board.all? {|row| row.length == 10}).to be_true
		end

	end
end


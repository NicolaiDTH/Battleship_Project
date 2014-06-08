require 'subships'

describe 'subships' do 

	context MiniScooter do
		
		let(:rose) { MiniScooter.new }

		it 'is a ship' do
			expect(MiniScooter.ancestors).to be_include Ship
		end

		it 'has a size of 2' do
			expect(rose.size).to eq 2
		end
	end

	context XootrScooter do
		it 'is a ship' do
			expect(XootrScooter.ancestors).to be_include Ship
		end

		it 'has a size of 3' do
			expect(XootrScooter.new.size).to eq 3
		end
	end

	context MotorScooter do
		it 'is a ship' do
			expect(MotorScooter.ancestors).to be_include Ship
		end

		it 'has a size of 4' do
			expect(MotorScooter.new.size).to eq 4
		end
	end

	context Vespa do
		it 'is a ship' do
			expect(Vespa.ancestors).to be_include Ship
		end
	
		it 'has a size of 5' do
			expect(Vespa.new.size).to eq 5
		end
	end
	
end
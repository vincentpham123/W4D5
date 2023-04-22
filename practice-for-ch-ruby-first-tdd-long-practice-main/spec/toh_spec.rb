require 'towers_of_hanoi'

describe '::TowersOfHanoi' do 
    let(:start) {TowersOfHanoi.new}
    let(:answer){
        [[],
        [],
        [3,2,1]   
    ]}
    
    describe '#initialize' do
        context 'game set up' do 
            it 'should start game with 3 empty arrays' do
                expect(start.piles).to eq([[3,2,1],[],[]])
            end
            it 'should have all unique arrays' do 
                expect(start.piles[0]).not_to be(start.piles[1])
            end
            it 'disks should be 0' do 
                expect(start.disks).to eq(3)
            end
        end
    end

    describe '#move' do 
        context 'moves disc' do 
            it 'get a user input for from' do
                input = double('1\n', :chomp=>'1')
                allow(start.move).to receive(:gets).and_return(input)
                expect {start.move}.to output(/select which pile to move from 1-3/).to_stdout
            end

        end
        it 'should get a user input for to' do 
            input = double('1\n', :chomp=>'1')
            allow(start.move).to receive(:gets).and_return(input)
            expect {start.move}.to output(/select which pile to move to 1-3/).to_stdout
        end
        
    end

    describe '#won?' do 
        before(:each) {start.change_pile = answer}
        
        it 'should return true if discs on last one' do 
            expect(start.won?).to be true 
        end
        it 'should return false if discs not on last one' do 
            expect(TowersOfHanoi.new.won?).to be false
        end

    end


end



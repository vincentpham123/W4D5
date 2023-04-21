require 'uniq'


describe '#uniq' do
    let(:test1) {[1,2,3]}
    let (:test2){[1, 2, 1, 3, 3]}
    context 'when not an array is given' do 
        it 'returns an error' do 
            expect{uniq('test')}.to raise_error('Not an array')
        end
    end
    context 'when given an array with no repeats' do
        it 'returns a different array' do 
            expect(uniq(test1)).not_to be(test1)
        end
    end
    
    it 'returns unique values' do
        expect(uniq(test2)).to eq(test1)
    end



end




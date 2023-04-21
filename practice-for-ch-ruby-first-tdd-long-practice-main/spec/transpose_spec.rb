require 'transpose'

describe '#transpose' do
    let(:test) {[
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
      ]}
    let(:answer){[
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
      ]}

      it 'transposes' do 
        expect(transpose(test)).to eq(answer)
      end
      it 'returns blank array when given blank array' do
        expect(transpose([])).to eq([])
      end

end
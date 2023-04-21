require "stock_picker"

describe "stock_picker" do
    let(:test) {[4,5,1,5,1,5]}
    let(:answer) {[2,3]}

    it "Returns pair of largest positive difference" do 
        expect(stock_picker(test)).to eq(answer)
    end
end
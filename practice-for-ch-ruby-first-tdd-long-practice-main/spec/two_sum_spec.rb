require 'two_sum'


describe Array do 

    describe "#two_sum" do 
        let(:test1) {[-1, 0, 2, -2, 1]}
        let(:answer) {[[0, 4], [2, 3]]}
        it "Array of elements are all valid nums" do
            expect(test1.two_sum).to eq(answer)
        end

        it "Return answer in the correct order" do
            expect(test1.two_sum).to eq(answer)
        end



    end



end
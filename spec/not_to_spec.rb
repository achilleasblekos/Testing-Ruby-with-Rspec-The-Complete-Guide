RSpec.describe "not_to method" do
    it "checks for the inverse of a matcher" do
        expect(5).not_to eq(10)  
        expect([1, 2, 3]).not_to eq([1, 2, 4]) 
        expect(10).not_to be_odd 
        expect([1, 2, 3]).not_to be_empty

        expect(nil).not_to be_truthy

        expect('Hello').not_to start_with('car')
        expect('Hello').not_to end_with('city') 

        expect(5).not_to respond_to(:length)
        expect([:a, :b, :c]).not_to include(:d)  
        expect{11/3}.not_to raise_error         
    end
    
end

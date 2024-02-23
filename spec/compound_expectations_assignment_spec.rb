# Provide code samples for the questions below.

# Questions for this assignment
# 1) Write a compound expectation that asserts the string firetruck starts with the substring "fire" and ends with the substring "truck".

# 2) Write a compound expectation that asserts that the number 20 is even and that it responds to the times mthod.

# 3) Write a compound expectation that asserts that the array [4, 8, 15, 16, 23, 42] includes the value 42 and starts with the values 4, 8, and 15.


# 1)
RSpec.describe "firetruck" do
    it "should start_with AND end_with" do
        expect(subject).to start_with('fire').and end_with('truck') 
    end
end

# 2)
RSpec.describe 20 do
    it "is even AND responds to times" do
        expect(subject).to be_even.and respond_to(:times)
    end
end

# 3)
RSpec.describe [4, 8, 15, 16, 23, 42] do
    it "includes the value 42 and starts with the values 4, 8, and 15" do
        expect(subject).to include(42).and start_with(4,8,15) 
    end
end

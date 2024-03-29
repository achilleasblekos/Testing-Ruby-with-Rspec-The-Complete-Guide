# 1) By default, what will subject equal?

# --> An instance of the class under test.

# 2) How do you define a custom subject? Provide a code example.

# --> Invoke the subject method and provide a Ruby block. 
# --> The final evaluation of the block will be the value of subject whenever it's used in an example. 
# --> subject { "hello" }

# 3) How does the described_class helper method work? What is the advantage of using it over writing the class name out?

# --> described_class dynamically references the class being tested (the one passed as an argument to the top-level describe method). 
# --> The advantage is that, if the class name changes, the rest of the spec does not have to change.

# 4) Write an RSpec test for an array with 2 elements.

# Declare the subject to be [1, 2].

# Write an example that uses expect(subject) to test whether the array is equal to [1, 2].

# Write an example that uses the one-liner is_expected syntax.

# Which do you prefer?

RSpec.describe 'testing an array' do
  subject { [1, 2] }

  it 'should be equal to [1, 2]' do
    expect(subject).to eq([1, 2])
  end

  it { is_expected.to eq([1, 2]) }
end


# 5) What's the difference between include_examples and include_context?

# --> The include_examples method injects predefined examples into an example group.

# --> The include_context method injects context (i.e. before blocks, instance variables, helper methods, let variables) into an example group.

# --> Both remove duplication across tests.
# Create an example group with a string argument of "math calculations".

# Inside the group, create an example with a string argument of "does basic math".

# Inside the example, write 4 mathematical assertions of your choice.

# The expect method should receive a valid mathematical expression (for example, 3 + 4 or 5 * 3).

# The eq method should compare the result fo the evaluation with the right answer.


RSpec.describe 'math calculations' do
  it 'does basic math' do
    expect(3 + 4).to eq(7)
    expect(10 - 5).to eq(5)
    expect(8 * 6).to eq(48)
    expect(20 / 2).to eq(10)
  end
end
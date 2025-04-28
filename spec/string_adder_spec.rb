require_relative '../string_adder'

RSpec.describe "#string_adder" do
  it "Returns sum of numbers speprated by commas" do
    expect(string_adder("1,2,3")).to eq(6)
  end
end

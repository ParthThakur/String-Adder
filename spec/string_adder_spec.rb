require_relative '../string_adder'

RSpec.describe "#string_adder" do
  it "Returns sum of numbers speprated by commas" do
    expect(string_adder("1,2,3")).to eq(6)
  end

  it "Returns 0 for empty string" do
    expect(string_adder("")).to eq(0)
  end

  it "Handles single number" do
    expect(string_adder("5")).to eq(5)
  end
end

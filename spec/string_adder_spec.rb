require_relative '../string_adder'

RSpec.describe "#string_adder" do
  it "Returns sum of numbers speprated by commas" do
    expect(string_adder("1,2,3")).to eq(6)
    expect(string_adder("10,23,36")).to eq(69)
    expect(string_adder("10,23,236")).to eq(269)
  end

  it "Returns 0 for empty string" do
    expect(string_adder("")).to eq(0)
  end

  it "Handles single number" do
    expect(string_adder("5")).to eq(5)
  end

  it "Handles new lines (\\n) as delimiters" do
    expect(string_adder("1\n2,3")).to eq(6)
  end

  it "Handles custom delimiters" do
    delimiters = %w[~ ! @ # $ % ^ & * ( ) _ + =]

    delimiters.each do |delimiter|
      expect(string_adder("//#{delimiter}\n1#{delimiter}2#{delimiter}3")).to eq(6)
      expect(string_adder("//#{delimiter}\n1#{delimiter}2\n3")).to eq(6)
    end
  end

  it "Throws error for negative numbers" do
    expect { string_adder("1,-2,3") }.to raise_error("Negative numbers not allowed: -2")
    expect { string_adder("//;\n1;-2;3") }.to raise_error("Negative numbers not allowed: -2")
    expect { string_adder("//;\n1;-2;-3") }.to raise_error("Negative numbers not allowed: -2, -3")
  end

  it "Ignores numbers greater than 1000" do
    expect(string_adder("1001,2")).to eq(2)
    expect(string_adder("1000,2")).to eq(1002)
  end

  it "Handles delimiters of any length" do
    expect(string_adder("//[***]\n1***2***3")).to eq(6)
    expect(string_adder("//[**][%%]\n1**2%%3")).to eq(6)
  end

  it "Handles multiple delimiters" do
    expect(string_adder("//[*][%]\n1*2%3")).to eq(6)
    expect(string_adder("//[*][%]\n1*2\n3")).to eq(6)
  end
end

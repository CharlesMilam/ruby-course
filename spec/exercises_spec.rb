require 'spec_helper'

describe 'Exercise 0' do
  it "triples the length of a string" do
    result = Exercises.ex0("ha")
    expect(result).to eq("hahaha")
  end

  it "returns 'nope' if the string is 'wishes'" do
    result = Exercises.ex0("wishes")
    expect(result).to eq("nope")
  end
end

describe "Exercise 1" do
  it "returns the number of elements in the array" do
    result = Exercises.ex1([0, 1, 2])
    expect(result).to eq(3)
  end

  it "returns the number of elements in the array" do
    result = Exercises.ex1([])
    expect(result).to eq(0)
  end
end

describe "Exercise 2" do
  it "returns the second element of an array" do
    result = Exercises.ex2([0, 1, 2, 3])
    expect(result).to eq(1)
  end
end

describe "Exercise 3" do
  it "Returns the sum of the given array of numbers" do
    result = Exercises.ex3([0, 1, 2, 3])
    expect(result).to eq(6)
  end
end

describe "Exercise 4" do
  it "Returns the max number of the given array" do
    result = Exercises.ex4([0, 1, 2, 3])
    expect(result).to eq(3)
  end
end

describe "Exercise 5" do
  it "Iterates through an array and `puts` each element" do
    
    $stdout.should_receive(:puts).with("a")
    result = Exercises.ex5(["a", "b", "c"])
    require_relative '../exercises.rb'
  end
end
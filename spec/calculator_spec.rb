# Your code here

require 'calculator.rb'

describe Calculator do


  describe "#initialize" do
    it "creates a calculator object" do
      expect(Calculator.new).to be_a(Calculator)
    end

    it "creates a calculator with nil memory" do
      expect(Calculator.new.instance_variable_get(:@memory)).to be_nil
    end

    it "creates a stringify variable that defaults to false" do
      expect(Calculator.new.instance_variable_get(:@stringify)).to be_falsy
    end

    it "can take argument 'true' that sets stringify" do
      expect(Calculator.new(true).instance_variable_get(:@stringify)).to be_truthy
    end

    it "returns an argument error when passed two arguments" do
      expect{Calculator.new(true, 7)}.to raise_error(ArgumentError)
    end


  end

  describe "#add" do
    let(:calc){Calculator.new}

    it "takes two numbers and returns the sum" do
      expect(calc.add(3,4)).to eq(7)
    end

    it "requires exactly 2 arugments else returns argument error" do
      expect{calc.add(3,4,5)}.to raise_error(ArgumentError)
      expect{calc.add(3)}.to raise_error(ArgumentError)
      expect{calc.add}.to raise_error(ArgumentError)
    end

  end

  describe "#subtract" do
    let(:calc){Calculator.new}

    it "takes two numbers and returns the difference" do
      expect(calc.subtract(3,4)).to eq(-1)
    end

    it "requires exactly 2 arugments else returns argument error" do
      expect{calc.subtract(3,4,5)}.to raise_error(ArgumentError)
      expect{calc.subtract(3)}.to raise_error(ArgumentError)
      expect{calc.subtract}.to raise_error(ArgumentError)
    end

  end




end

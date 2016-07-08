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

  describe "#multiply" do
    let(:calc){Calculator.new}

    it "takes two numbers and returns the product" do
      expect(calc.multiply(3,4)).to eq(12)
    end

    it "requires exactly 2 arugments else returns argument error" do
      expect{calc.multiply(3,4,5)}.to raise_error(ArgumentError)
      expect{calc.multiply(3)}.to raise_error(ArgumentError)
      expect{calc.multiply}.to raise_error(ArgumentError)
    end
  end

  describe "#divide" do
    let(:calc){Calculator.new}

    it "takes two numbers and returns the quotient" do
      expect(calc.divide(3,4)).to eq(0.75)
    end

    it "requires exactly 2 arugments else returns argument error" do
      expect{calc.divide(3,4,5)}.to raise_error(ArgumentError)
      expect{calc.divide(3)}.to raise_error(ArgumentError)
      expect{calc.divide}.to raise_error(ArgumentError)
    end

    it "returns an integer if possible" do
      expect(calc.divide(4,2)).to be_a(Integer)
    end

    it "cannot divide by zero" do
      expect{calc.divide(4,0)}.to raise_error
    end
  end

  describe "#pow" do
    let(:calc){Calculator.new}

    it "takes two numbers and returns the power" do
      expect(calc.pow(3,2)).to eq(9)
    end

    it "requires exactly 2 arugments else returns argument error" do
      expect{calc.pow(3,4,5)}.to raise_error(ArgumentError)
      expect{calc.pow(3)}.to raise_error(ArgumentError)
      expect{calc.pow}.to raise_error(ArgumentError)
    end

    it "raising to 0 returns 1" do
      expect(calc.pow(8,0)).to eq(1)
    end
  end

  describe "#sqrt" do
    let(:calc){Calculator.new}

    it "returns the square root" do
      expect(calc.sqrt(9)).to eq(3)
      expect(calc.sqrt(100)).to eq(10)
    end

    it "returns a float rounded to two decimal places if not an integer" do
      expect(calc.sqrt(8)).to eq(2.83)
    end

    it "returns an integer if possible" do
      expect(calc.sqrt(9)).to be_a(Integer)
    end

    it "requires exactly 1 arugment else returns argument error" do
      expect{calc.sqrt(3,4,5)}.to raise_error(ArgumentError)
      expect{calc.sqrt(3,4)}.to raise_error(ArgumentError)
      expect{calc.sqrt}.to raise_error(ArgumentError)
    end

    it "returns an error when taking the square root of a negative number" do
      expect{calc.sqrt(-9)}.to raise_error
    end
  end

  describe "#memory" do
    let(:calc){Calculator.new}

    it "can be set using memory=()" do
      calc.memory = 4
      expect(calc.memory).to eq(4)
    end

    it "can be set using memory=()" do
      calc.memory = 4
      calc.memory
      expect(calc.memory).to be_nil
    end
  end

  describe "when @stringify=true" do
    let(:calc){Calculator.new(true)}

    it "outputs string instead of integer/float" do
      expect(calc.add(3,4)).to be_a(String)
    end

    it "outputs correct string answer" do
      expect(calc.add(3,4)).to eq("7")
    end

  end

end

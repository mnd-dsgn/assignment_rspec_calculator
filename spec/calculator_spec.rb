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
  end

end
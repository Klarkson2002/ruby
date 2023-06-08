require "./lib/calculator.rb"
require "rspec"

RSpec.describe Calculator do
  it "exchange first_operator" do
    expect(subject.first_operator = 1).to eq(1)
  end

  it "exchange first_operator" do
    expect(subject.second_operator = 3).to eq(3)
  end

  it "exchange operation" do
    calculator = Calculator.new(1, 2)
    calculator.operation = "+"
    expect(calculator.first_operator).to eq(1)
    expect(calculator.second_operator).to eq(2)
    expect(calculator.answer).to eq(3)
  end

  it "displays operator error" do
    calculator = Calculator.new(1, 2)
    calculator.operation = "+-"
    expect{calculator.answer}.to raise_error(RuntimeError)
    expect{calculator.answer}.to raise_error("Wrong operator please use +, -, *, / operators")
  end


  context "when operation are summation" do
    subject { Calculator.new(1, 2, '+') }

    it { expect(subject.first_operator).to eq(1) }
    it { expect(subject.second_operator).to eq(2) }

    it "returns right answer" do
      expect(subject.answer).to eql(3)
    end

    it "returns right float answer" do
      subject.second_operator = 6.35
      expect(subject.answer).to eql(7.35)
    end
  end

  context "when operation are subtraction" do
    subject { Calculator.new(1, 2, '-') }
    it "returns right answer" do
      expect(subject.answer).to eql(-1)
    end

    it "returns right float answer" do
      subject.second_operator = 6.35
      expect(subject.answer).to eql(-5.35)
    end
  end

  context "when operation are multiplication" do
    subject { Calculator.new(1, 2, '*') }
    it "returns right answer" do
      expect(subject.answer).to eql(2)
    end

    it "returns right float answer" do
      subject.first_operator = 6.35
      expect(subject.answer).to eql(12.7)
    end
  end

  context "when operation are division" do
    subject { Calculator.new(6, -2, '/') }

    it "returns right answer" do
      expect(subject.answer).to eql(-3)
    end

    it "returns exchanged answer" do
      subject.second_operator = 3
      expect(subject.answer).to eq(2)
    end

    it "division by zero returns infinity" do
      subject.second_operator = 0
      expect(subject.answer).to eql(Float::INFINITY)
    end

    it "division by zero returns infinity" do
      subject.first_operator = -3
      subject.second_operator = 0
      expect(subject.answer).to eql(-Float::INFINITY)
    end

    it "returns right float" do
      subject.first_operator = 1
      subject.second_operator = 2
      expect(subject.answer).to eql(0.5)
    end
    
    it "calculate float nambers" do
      subject.first_operator = 13.9
      subject.second_operator = 1.6
      expect(subject.answer).to eql(8.6875)
    end
  end
end

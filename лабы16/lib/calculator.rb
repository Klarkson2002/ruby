class Calculator
  attr_accessor :first_operator, :second_operator
  attr_writer :operation

  OPERATIONS = ['+', '-', '*', '/']

  def initialize first_operator = nil, second_operator = nil, operation = nil
    @first_operator = first_operator
    @second_operator = second_operator
    @operation = operation
  end

  def to_flat
    first_operator.to_f
  end

  def answer
    calculation = calculate

    begin
      calculation = calculation.to_i if calculation.to_i == calculation
    ensure
      return calculation
    end
  end

  private

  def calculate
    if filter_operation
      eval "#{first_operator.to_f} #{@operation} #{second_operator.to_f}"
    else
      raise "Wrong operator please use #{OPERATIONS.join(", ")} operators"
    end
  end

  def filter_operation
    OPERATIONS.include? @operation
  end
end

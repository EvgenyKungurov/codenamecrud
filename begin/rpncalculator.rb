class RPNCalculator
  
  attr_accessor :calculator
  
  def initialize
    @calculator = Array.new
  end  

  def push(v)
    @calculator.push(v)
  end
  
  def plus
    @calculator.push('+')
  end

  def value 
    expression = []
    temp = []
    
    @calculator.each do |x|
      case x
        when Integer
          expression.push(x)
        when String
          temp = expression.pop(2)
          expression.push(temp[0].send(x, temp[1]))
      end
    end
    expression
  end

end


c = RPNCalculator.new
c.push(7)
c.push(2)
c.push(3)
c.push('+')
c.push('-')

puts c.value

module Enumerable
  
  def my_each
    for i in self
      yield(i) if block_given?
    end
  end
  
  def my_each_with_index
    for i in 0..self.size - 1
      yield(self[i], i) if block_given?
    end
  end
  
  def my_select
    result =[]
    for i in self
      tmp = yield(i) if block_given?
      result << i if tmp
    end
    result
  end
  
  def my_all?
    tmp = []
    for i in self
      tmp << yield(i) if block_given?
      if tmp.include? false
        result = false
        break
      else
        result = true
      end
    end
    result
  end
  
  def my_any?
    tmp = []
    for i in self
      tmp << yield(i) if block_given?
      if tmp.include? true
        result = true
        break
      else
        result = false
      end
    end
    result
  end
  
  def my_none?
    tmp = []
    for i in self
      tmp << yield(i) if block_given?
      if tmp.include? true
        result = false
      else
        result = true
      end
    end
    result
  end
  
  def my_count
    count = 0
    for i in self
      count += 1 if i
    end
    count
  end
  
  def my_map
    result = []
    for i in self
      result << yield(i) if block_given?
    end
    result
  end
  
  def my_inject
    result = self[0]
    for i in 1..self.size - 1
      result = yield(result, self[i]) if block_given?
    end
    result
  end  
  
 
end

def multiply_els(arr)
  arr.my_inject { |res, e| res * e}
end
  

puts [1, 2, 3, 4].my_inject { |res, e| res * e }

puts multiply_els([2,4,5])

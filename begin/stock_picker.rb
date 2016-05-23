def stock_picker(price)
  weeks = price.each_slice(7).to_a
  
  profit = []
  weeks.size.times do |count|
    profit << weeks[count].index { |i| i == weeks[count][1..-1].min }
    profit << weeks[count].index { |i| i == weeks[count][1..-1].max }
  end
  profit.first(2)
end

print stock_picker([17,3,6,9,15,8,6,1,10])

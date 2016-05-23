def bubble_sort_by(arr)
  result = true
  while result
    result = false
    for i in 0..arr.size - 2
      size = yield arr[i], arr[i + 1]
      if size < 0
        arr[i], arr[i + 1] =  arr[i + 1], arr[i]
        result = true
      end
    end
  end
  print arr
end


bubble_sort_by(["hi","hello","hey","huawei", "ho", "honey"]) do |left,right|
  right.length - left.length
end

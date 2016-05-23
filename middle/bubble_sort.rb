def bubble_sort(arr)
  result = true
  while result
    result = false
    for i in 0..arr.size - 2
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        result = true
      end
    end
  end
  arr
end

print bubble_sort([4,3,78,2,0,2])





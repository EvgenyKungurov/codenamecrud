def merge_sort(arr)
  return arr if arr.size <= 1
  mid   = arr.size / 2
  left  = merge_sort(arr[0..mid - 1])
  right = merge_sort(arr[mid..-1])
  merge(left, right)
end

def merge(left, right)
  result = []
  while left.size > 0 && right.size > 0
    if left.flatten[0] <= right.flatten[0]
      result << left[0]
      left.shift
    else
      result << right[0]
      right.shift
    end
  end
  result << left  if left.size  > 0
  result << right if right.size > 0
  result
end

puts merge_sort([1, 4, 6, 2])

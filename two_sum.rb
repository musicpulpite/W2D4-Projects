def bad_two_sum?(arr, target)
  (0...arr.length - 1).each do |i|
    (i + 1...arr.length).each do |j|
      return true if arr[i] + arr[j] == target
    end
  end

  return false
end

def okay_two_sum?(arr, target)
  arr_sorted = arr.sort

  i = 0
  j = arr.length - 1

  while i < j
    current_sum = arr[i] + arr[j]

    case current_sum <=> target
    when -1
      i += 1
    when 0
      return true
    when 1
      j -= 1
    end
  end

  return false
end

def two_sum?(arr, target)
  h = {}

  arr.each do |num|
    diff = target - num
    return true if h[diff] == num
    h[num] = diff
  end

  false
end


def windowed_max_range(arr, window_size)
  max_range = 0

  (0..arr.length - window_size).each do |i|
    sub_arr = arr[i...i + window_size]
    print sub_arr
    curr_range = sub_arr.max - sub_arr.min
    max_range = curr_range if curr_range > max_range
  end

  max_range
end

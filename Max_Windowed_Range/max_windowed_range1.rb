require_relative "MinMaxStackQueue.rb"

#This original version of windowed max range runs in O(n^2) time
#I think, however, that that is an oversimplification since the
#loop does O(arr.length) operations and each iteration does
#O(window_size) operations on the array... so technically O(nm)

# def windowed_max_range(arr, window_size)
#   max_range = 0
#
#   (0..arr.length - window_size).each do |i|
#     sub_arr = arr[i...i + window_size]
#     print sub_arr
#     curr_range = sub_arr.max - sub_arr.min
#     max_range = curr_range if curr_range > max_range
#   end
#
#   max_range
# end

######NOW Using our custom-built MinMaxStackQueue#######

#This new implementation should run in O(n) time dependent on arr.length
#since all of the enqueue and dequeue operations during each iteration
#works in constant time thanks to MinMaxStackQueue and we don't have
#to calculate min and max each time

def windowed_max_range(arr, window_size)
  max_range = 0
  i = 0

  queue = MinMaxStackQueue.new
  while i < window_size
    queue.enqueue(arr[i])
    i += 1
  end

  max_range = queue.max - queue.min

  while i < arr.length
    queue.dequeue
    queue.enqueue(arr[i])

    current_range = queue.max - queue.min
    max_range = current_range if current_range > max_range

    i += 1
  end

  max_range
end

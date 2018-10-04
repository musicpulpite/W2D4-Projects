
#Time complexity: O(n^2)
def my_min1(list)
  list.each do |el1|
    return el1 if list.all? {|el2| el1 <= el2}
  end
end

#Time complexity: O(n)
def my_min2(list)
  smallest = list.first

  list[1..-1].each do |el|
    smallest = el if el < smallest
  end

  smallest
end

#Time complexity: O(n^2)
def largest_contiguous_subsum(list)
  largest_sum = nil

  (0...list.length).each do |i|
    (i + 1...list.length).each do |j|
      sub_list = list[i..j]
      sub_list_sum = sub_list.reduce(:+)
      largest_sum = (largest_sum.nil? ? sub_list_sum : [largest_sum, sub_list_sum].max)
    end
  end

  largest_sum
end

def lcs(list)
i = 0
j = 0

largest_sum = list.first
current_sum = list.first



end


#incomplete
def lcs2(list)
  largest_sum = list.first
  current_sum = 0

  list.each do |el|
    current_sum += el
    largest_sum = current_sum if current_sum > largest_sum
  end

  # current_sum = largest_sum

  list.each do |el|
    current_sum -= el
    largest_sum = current_sum if current_sum > largest_sum
  end

  largest_sum
end

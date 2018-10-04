#Time complexity: O(n!)
def first_anagram?(str1, str2)
  anagram_arrays = str1.chars.permutation.to_a
  anagram_strings = anagram_arrays.map {|array| array.join("")}
  anagram_strings.include?(str2)
end

#Time complexity: O(n^2) or O(nm)?
#second_anagram has a better runtime than first_anagram
def second_anagram?(str1, str2)
  str2 = str2.split("")

  str1.chars.each do |letter|
    idx = str2.find_index(letter)
    case idx.nil?
    when true
      return false
    when false
      str2.delete_at(idx)
    end
  end

  return false unless str2.empty?
  return true
end

#Time complexity: Assuming merge sort, n lg n
#Better than second_anagram
def third_anagram?(str1, str2)
  str1.chars.sort == str2.chars.sort
end

#Time complexity: O(n)
def fourth_anagram?(str1, str2)
  h = Hash.new(0)

  str1.each_char do |ch1|
    h[ch1] += 1
  end

  str2.each_char do |ch2|
    h[ch2] -= 1
  end

  h.values.all? {|count| count == 0}
end

require_relative "MyStack.rb"

class MinMaxStack < MyStack

  attr_accessor :min, :max

  def initialize
    super
    @min = nil
    @max = nil
  end

  # def min
  #   min_val
  # end
  #
  # def max
  #   max_val
  # end

  def push(el)
    prev_max, prev_min = self.max, self.min

    self.max = el if self.max.nil? || el > self.max
    self.min = el if self.min.nil? || el < self.min

    store.push([el, prev_max, prev_min])
  end

  def pop
    popped_num = store.pop
    self.max, self.min = popped_num[1], popped_num[2]
  end

end

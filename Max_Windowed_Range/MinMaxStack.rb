require_relative "MyStack.rb"

class MinMaxStack < MyStack

  def initialize
    super
    @min = nil
    @max = nil
  end

  def min
    min
  end

  def max
    max
  end

  def push(el)
    max = el if el > max || empty?
    min = el if el < max || empty?
    store.push(el)
  end

  def pop
    
  end
  private

  attr_reader :min, :max
end

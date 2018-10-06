require_relative 'MinMaxStack.rb'
require_relative 'MyStack.rb'

class MinMaxStackQueue

  def initialize
    @stack = MinMaxStack.new
    @stack_temp = MyStack.new
  end

  def max
    stack.max
  end

  def min
    stack.min
  end

  def size
    stack.size
  end

  def empty?
    stack.empty?
  end

  def enqueue(el)
    stack.push(el)
  end

  def dequeue
    raise "Cannot dequeue from empty array" if empty?
    until size == 1
      stack_temp.push(stack.pop[0])
    end

    removed = stack.pop

    until stack_temp.empty?
      stack.push(stack_temp.pop)
    end

    removed
  end

  private

  attr_reader :stack, :stack_temp

end

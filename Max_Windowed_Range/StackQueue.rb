require_relative "MyStack.rb"

class StackQueue

  def initialize
    @stack = MyStack.new
    @stack_temp = MyStack.new
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
      stack_temp.push(stack.pop)
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

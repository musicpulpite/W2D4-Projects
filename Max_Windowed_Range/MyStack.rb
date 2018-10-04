class MyStack
  def initialize
    @store = []
  end

  def peek
    store.last
  end

  def size
    store.length
  end

  def empty?
    store.empty?
  end

  def pop
    store.pop
  end

  def push(el)
    store.push(el)
  end

  def min
  end

  def max
  end

  private

  attr_reader :store

end

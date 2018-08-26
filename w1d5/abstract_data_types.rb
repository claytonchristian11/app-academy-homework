class Stack
  attr_accessor :stack

  def initialize
    @stack = []
  end

  def push(el)
    @stack << el
  end

  def pop
    @stack = @stack[0..-2]
  end

  def peek
    @stack[-1]
    # returns, but doesn't remove, the top element in the stack
  end
end

class Queue

  def initialize()
    @queue = []
  end

  def enqueue(el)
    @queue = [el] + @queue
  end

  def dequeue
    @queue = @queue[1..-1]
  end

  def peek
    @queue[0]
  end

end

class Map

  attr_accessor :map

  def initialize
    @map = []
  end

  def set(key, value)
    all_keys = []
    @map.each do |pairs| all_keys << pairs[0]}
    if all_keys.include?(key)
      @map[key] = value
    else
      @map << [key, value]
    end
  end

  def get(key)
    @map.each do |pairs|
      return pairs[1] if pairs[0] == key
    end
  end

  def delete(key)
    @map.reject! { |pairs| pairs[0] == key}
  end

  def show
    @map
  end

end

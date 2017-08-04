class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
    el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end
end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
    el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.dup
  end
end

class Map
  def initialize
    @map = []
  end

  def lookup(key)
    @map.each do |array|
      if array[0] == key
        return array[1]
      end
    end
  end

  def remove(key)
    @map.reject! { |array| array[0] == key }
  end

  def assign(key, value)
    pair_index = @map.index { |pair| pair[0] == key }
    pair_index ? @map[pair_index][1] = value : @map.push([key, value])
    [key, value]
  end

  def show
    deep_dup(@map)
  end

  private

  def deep_dup(array)
    array.map { |element| element.is_a?(Array) ? deep_dup(element) : element }
  end
end

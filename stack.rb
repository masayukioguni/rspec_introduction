class Stack

  class EmptyError < RuntimeError; end

  def initialize
    @stack = []
  end

  def push(val)
    @stack.push(val)
  end

  def pop
    unless empty?
      @stack.pop
    else
      raise EmptyError
    end
  end

  def empty?
    @stack.empty?
  end

  def size
    @stack.size
  end

end
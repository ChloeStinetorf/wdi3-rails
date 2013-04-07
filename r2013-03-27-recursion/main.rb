
require 'pry'
require 'pry-debugger'
require 'pry-stack_explorer'

def factorial(x)
  if x == 1
    1
  else
    x * factorial(x-1)
  end
end

def fib(r)
  if r == 1 || r == 2
    return 1
  else
    return (fib(r-1) + fib(r-2))
  end
end

class Node
  attr_accessor :data, :prv, :nxt

  def initialize(data)
    self.data = data
    prv = nxt = nil
  end
end

binding.pry



# Solving these first two:
# https://vimeo.com/157505448
def block_to_proc(&block)
  block
end

def wrap(value)
  block_to_proc do |block|
    value
  end
end

# Spec is named call_twice_and_thrice_spec.rb
def call_twice(&block)
  block.call(block.call)
end

def call_thrice(&block)
  block.call(block.call(block.call))
end

def yield_first(array, &block)
  return [] if array.length == 0
  yield array[0]
end

def yield_em_all(array, &block)
  i = 0
  while array[i]
    yield array[i]
    i += 1
  end
end

def yield_two(array, &block)
  i = 0
  while array[i]
    yield array[i]
    i += 1
  end
end

def yield_three(array, &block)
  i = 0
  while array[i]
    yield array[i]
    i += 1
  end
end

def yield_four(array, &block)
  i = 0
  while array[i]
    yield array[i]
    i += 1
  end
end

def yield_five(array, &block)
  i = 0
  while array[i]
    yield array[i]
    i += 1
  end
end

def yield_six(array, &block)
  i = 0
  while array[i]
    yield array[i]
    i += 1
  end
end

def yield_seven(array, &block)
  i = 0
  while array[i]
    yield array[i]
    i += 1
  end
end

def yield_eight(array, &block)
  i = 0
  while array[i]
    yield array[i]
    i += 1
  end
end

def yield_nine(array, &block)
  i = 0
  while array[i]
    yield array[i]
    i += 1
  end
end

def yield_ten(array, &block)
  i = 0
  while array[i]
    yield array[i]
    i += 1
  end
end

def yield_with_while_loop(array, &block)
  i = 0
  while array[i]
    yield array[i]
    i += 1
  end
end

def yield_with_each(array, &block)
  array.each do |element|
    yield element
  end
end

def best_advice(array, &block)
  i = 0
  while array[i]
    if block.call(array[i])
      return array[i]
    else
      i += 1
    end
  end
end

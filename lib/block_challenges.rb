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

# This receives a PrimitiveArray, which is a class I made that only
# has brackets and length, so you'll have to solve it the way you
# would in a language like C, which doesn't have real arrays
def yield_with_while_loop(array, &block)
  i = 0
  while array[i]
    yield array[i]
    i += 1
  end
end

alias yield_em_all yield_with_while_loop

alias yield_two yield_with_while_loop

alias yield_three yield_with_while_loop

alias yield_four yield_with_while_loop

alias yield_five yield_with_while_loop

alias yield_six yield_with_while_loop

alias yield_seven yield_with_while_loop

alias yield_eight yield_with_while_loop

alias yield_nine yield_with_while_loop

alias yield_ten yield_with_while_loop

# This receives an ArrayWithOnlyEach, which, you may have guessed,
# only has the each method. Your solution will have to work in terms
# of each :)
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

def blinked_list_unshift(link, data)
end

# You'll have to figure out how to define aside :)


# If you struggle with any of these, skip to the next one and come back later
class PubSubSimple
  # you'll have to figure out what goes in here :)
end

class OnCount
end

class PubSub
end

class Do
end

def block_and_forth(&block)
end

# this one is pretty similar to block_and_forth, but will require a local variable,
# and passing of a Proc into the block spot (if you don't know how to do this,
# go play with synseer until you see something that probably does it :)
# http://synseer.herokuapp.com/
def block_and_forth_forever(&block)
end

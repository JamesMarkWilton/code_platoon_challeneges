# A function is a method that doesn't use any instance variables
# So it only works with its arguments, as local variables


# These ones are good to start with:
def list_first(list)
  # Try typing this into pry: show-source -e list.class
  require 'pry'
  binding.pry
end

def list_shift(list)
end

def list_unshift(list, data)
 # Try typing this into pry: show-source -e list.class
 require "pry"
 binding.pry
end

# Probably a nice intermediate set

def list_size(list)
end

def list_last(list)
end

def list_min(list)
end

def list_max(list)
end


# These ones are harder
def list_at(list, index)
end

def list_insert(list, index, data)
end

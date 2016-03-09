# If you have difficulty, here is a video talking about recursion:
# https://vimeo.com/24716767

def fib(n)
  return n if (n == 0 || n == 1)
  fib(n - 1) + fib(n - 2)
end

def two_to_the(n)
  return 1 if n == 0
  return 2 if n == 1
  2 * two_to_the(n - 1)
end


# Given an array of rows, call the block for each element,
# in "spiral order":
#   ie top row, right col, bottom row, left col
#   then in to the next spiral
#   https://rooksheathscience.files.wordpress.com/2014/11/image_thumb449.png?w=267&h=206
#
# Hint: this is in the recursion section
#
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access(two_d) { |i| order << i }
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
def spiral_access(rows, &block)
  return rows[0] if rows[0][0] == nil
  rows.each do |array|
    array.each do |element|
      yield element
    end
  end
end

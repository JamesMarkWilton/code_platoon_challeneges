# These will be **IMMUTABLE**!!
# All that means is that we only set the instance variables,
# we never point them at anything else after they've been set
class NilNode
  attr_reader :data, :link

  def initialize
    @data = nil
    @link = self
  end

  def length
    0
  end

  def min
    data
  end

  def max
    data
  end

  def first
    data
  end

  def last
    data
  end

  def empty?
    true
  end

  def nil?
    true
  end

  def [](pos)
    return @data if pos == 0
    pos -= 1
    self[pos]
  end

  def insert(pos, data)
    return NormalNode.new(data, self) unless pos > 0
    pos -= 1
    NormalNode.new(nil, self.insert(pos, data))
  end
end

class NormalNode
  attr_reader :data, :link

  def initialize(data, link)
    @data = data
    @link = link
  end

  def length
    link.length + 1
  end

  def min
    last_data = data
    return data if link.nil?
    last_data
    link.min
  end

  def max
    data
  end

  def first
    data
  end

  def last
    return data if link.nil?
    link.last
  end

  def empty?
    false
  end

  def nil?
    false
  end

  def [](pos)
    return data if pos == 0
    pos -= 1
    link[pos]
  end

  def insert(pos, data)
    return NormalNode.new(data, self) unless pos > 0
    pos -= 1
    link.insert(pos, data)
  end
end

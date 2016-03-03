def list_first(list)
  node = list.head
  return node unless node

  node.data
end

def list_shift(list)
  node = list.head
  return node unless node

  data = node.data
  list.head = node.link
  data
end

def list_unshift(list, data)
  list.head = Node.new(data, list.head)
  list
end

def list_each(list, &block)
  node = list.head

  while node
    block.call(node)
    node = node.link
  end
  node
end

def list_size(list)
  return 0 unless list.head
  size = 0
  list_each(list) do |node|
    size += 1
  end
  size
end


def list_last(list)
  return nil unless list.head
  data = nil

  list_each(list) do |node|
    data = node.data
  end
  data
end

def list_min(list)
  return nil unless list.head
  data = list.head.data

  list_each(list) do |node|
    data = node.data if data > node.data
    end
  data
end

<<<<<<< HEAD
def list_max(list)
  return nil unless list.head
  data = list.head.data

  list_each(list) do |node|
    data = node.data if data < node.data
  end

  data
end
=======
>>>>>>> 4f7ac77986bea4983430d108c2ca8f4b66fcf10a

def list_at(list, index)
  return nil unless list.head

  list_each(list) do |node|
    node if node && index != (1 || 0)
      index -= 1
  end

  if index.even?
    node && node.data
  else
    node && node.link
  end
end


def list_insert(list, index, data)
  if index == 0
    list.head = Node.new(data, list.head)
    list
  else
    node = list.head
    node_data = []

    while node || index > 0
      if node
        node_data << node.data
      else
        node_data << nil
      end
      node = node.link
    end

    node = Node.new(nil, nil)

    # new_head = Node.new(node.data, nil)

    # while index > 0
      # new_head.link = Node.new(node.data, nil)
      # node = node.link
      # index -= 1
    # end

    # new_head.link.link = Node.new(data, node)
    # list.head = new_head
    # list
  end
  list
end
def node_insert(node, index, data)
end

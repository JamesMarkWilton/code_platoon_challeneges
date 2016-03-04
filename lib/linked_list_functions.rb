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

def list_max(list)
  return nil unless list.head
  data = list.head.data

  list_each(list) do |node|
    data = node.data if data < node.data
  end

  data
end

def list_at(list, index)
  return nil unless list.head
  data = []

  list_each(list) do |node|
    data << node.data
  end

  data[index]
end

def list_shovel(list, list_data)

  list_each(list) do |node|
    node.link = Node.new(list_data, nil)
  end

  self
end

def list_insert(list, index, data)
  return list.head = Node.new(data, nil) unless list.head

  if index == 0
    list_unshift(list, data)
  else
    list_data = []

    list_each(list) do |node|
      list_data << node.data
    end

    list_data.insert(index, data)
    list.head = nil
    i = 0
    while i < list_data.length
      list_shovel(list, list_data[i])
      i += 1
    end
    list
  end

  list
end

def node_insert(node, index, data)
end

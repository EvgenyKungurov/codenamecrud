require './node'

class BTS
  attr_accessor :root

  def initialize(root = nil)
    @root = Node.new(root)
  end

  def build_tree(arr)
    @root = Node.new(arr.shift) if @root.value == nil
    arr.each { |v| @root.insert(v) }
  end

  def breadth_first_search(v)
    queue = [root]
    until queue.empty?
      node = queue.shift
      return node.inspect if node.value == v
      queue.push node.left_child unless node.left_child.nil?
      queue.push node.right_child unless node.right_child.nil?
    end
    nil
  end

  def depth_first_search(v)
    stack = [root]
    until stack.empty?
      node = stack.pop
      return node.inspect if node.value == v
      stack.push node.left_child unless node.left_child.nil?
      stack.push node.right_child unless node.right_child.nil?
    end
    nil
  end

  def dfs_rec(v, current_node = root)
    return current_node if current_node.value == v
    result = dfs_rec(v, current_node.left_child) unless current_node.left_child.nil?
    return result if result
    result = dfs_rec(v, current_node.right_child) unless current_node.right_child.nil?
    return result if result
    nil
  end

end

bts = BTS.new(1000)
bts.build_tree([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])
#puts bts.breadth_first_search(9)
#puts bts.depth_first_search(9)
puts bts.dfs_rec(9)

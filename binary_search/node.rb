class Node
  attr_reader :value
  attr_accessor :parent_id, :left_child, :right_child

  def initialize(value, parent = nil, left_child = nil, right_child = nil)
    @value = value
    @left_child = left_child
    @right_child = right_child
    @parent_id = parent
  end

  def insert(v)
    case value <=> v
    when  1 then insert_left(v)
    when -1 then insert_right(v)
    when  0 then false
    end
  end
  #
  # def inspect
  #   "Left: #{left_child.inspect} Node: #{value} Right: #{right_child.inspect}"
  # end

  private

  def insert_left(v)
    if left_child
      left_child.insert(v)
    else
      self.left_child = Node.new(v, self.object_id)
    end
  end

  def insert_right(v)
    if right_child
      right_child.insert(v)
    else
      self.right_child = Node.new(v, self.object_id)
    end
  end
end

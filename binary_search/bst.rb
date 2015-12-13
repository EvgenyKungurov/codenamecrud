require './node'

class BTS
  attr_accessor :root

  def initialize(root = nil)
    @root = Node.new(root)
  end

  def build_tree(arr)
    @root = Node.new(arr.shift) if @root.value == nil
    arr.each { |v| @root.insert(v) }
    @root.inspect
  end
end

bts = BTS.new(1000)
puts bts.build_tree([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])

class Tree

  def initialize(head)
    @head = head
    @right = nil
    @left = nil
  end

  def set_left(child)
    @left = Tree.new(child)
  end

  def set_right(child)
    @right = Tree.new(child)
  end

  def show_right
    if @right.nil?
      return "empty"
    else
      @right.show_head
    end
  end

   def show_left
    if @left.nil?
      return "empty"
    else
      @left.show_head
    end
  end

  def show_children
    puts @right
    puts @left
  end

  def show_head
    print @head
  end


  def add_new(new_child)
    if new_child < @head
      set_right(new_child)
    else
      set_left(new_child)
    end
  end


end

trial = Tree.new(10)
print "here is the head: "

puts  trial.show_head


trial.add_new(11)
print "Here are right children: "
puts trial.show_right
print "Here are left children: "
puts trial.show_left


trial.add_new(5)
print "Here are right children: "
puts trial.show_right
print "Here are left children: "
puts trial.show_left

trial.add_new(3)
print "Here are right children: "
puts trial.show_right
print "Here are left children: "
puts trial.show_left


trial.add_new(2)
print "Here are right children: "
puts trial.show_right
print "Here are left children: "
puts trial.show_left




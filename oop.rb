# Exercise: Getters and Setters

# p attr_accessor

# Exercise: Class Test

# class Foo
#   def name
#     "foo"
#   end
  
#   def say_name
#     "#{name}"
#   end
# end

# class Bar < Foo
#   def name
#     "bar"
#   end
# end

# p Bar.new.say_name

# p "bar"

# Exercise: Queue Continuum

# class Queue

#   def initialize(ary)
#     @ary = ary
#   end

#   def pop(index = nil)

#     if index == nil
#       @ary.delete_at(0)
#     else
#       pop_return = []
#       index.times do |i|
#         pop_return << @ary[0]
#         @ary.delete_at(0)
#       end 
#       pop_return
#     end
#   end

#   def push(ary)
#     @ary = @ary + ary
#     true
#   end

#   def to_a
#     @ary
#   end

# end

# queue = Queue.new([5, 6, 7, 8])

# p queue.pop # 5
# p queue.pop # 6
# p queue.push([4, 2]) # true
# p queue.pop(2) # [7, 8]
# p queue.to_a # [4, 2]

# Exercise: Baby Got Stacks

# class Stack

#   def initialize(ary)
#     @ary = ary
#   end

#   def pop(index=nil)
#     if index == nil
#       @ary.pop
#     else
#       deleted_ary = []
#       index.times do |i|
#         deleted_ary << @ary[-1]
#         @ary.pop
#       end
#       deleted_ary.sort
#     end
    
#   end

#   def push(ary)
#     @ary = @ary + ary
#     true
#   end

#   def to_a
#     @ary
#   end

# end


# stack = Stack.new([5, 6, 7, 8])

# p stack.pop # 8
# p stack.pop # 7
# p stack.push([4, 2]) # true
# p stack.pop(3) # [2, 4, 6]
# p stack.to_a # [5]





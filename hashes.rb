# Exercise: Related keys of Hash

# class Hash

#   def keys_of(*args)
#     ary = []
#     num_args = args.count

#     self.each do |key, value|
#       args.each do |arg|
#         if value == arg
#           ary << key 
#         end
#       end
#     end
#     ary
#   end
# end

# hash1 = {a: 1, b: 2, c: 3}
# hash2 = {a: 1, b: 2, c: 3, d: 1}
# hash3 = {a: 1, b: 2, c: 3, d: 1}

# p hash1
# p hash1.keys_of(1) # [:a]
# p hash2.keys_of(1) #[:a, :d]
# p hash3.keys_of(1, 2) # [:a, :b, :d]

# Exercise: The Little Hash Key that Could

# def key_for_min_value(hash)
#   if hash == {}
#     return nil
#   else
#     hash.sort{|x,y| x[1] <=> y[1]}[0][0]
#   end
# end


# p key_for_min_value({"k" => 2, "h" => 3, "j" => 1}) # "j"
# p key_for_min_value({"o" => 0, "z" => -2, "j" => 1}) # "z"
# p key_for_min_value({}) # nil
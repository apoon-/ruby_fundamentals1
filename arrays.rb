# Exercise: Bigger Element

# def first_even(items)
#   items.each do |item|
#     if item % 2 == 0
#       return item
#     end
#   end
# end

# p first_even([1,9,3,4])

# Exercise: Array Item Removal

# p [:r, :u, :b, :e, :q, :u, :e].delete_if {|x| x != :b && x != :q}

# Exercise: Version Sort

# filenames = [
#   "foo-1.10.2.ext",
#   "foo-1.11.ext",
#   "foo-1.3.ext",
#   "foo-1.50.ext",
#   "foo-1.8.7.ext",
#   "foo-1.9.3.ext",
#   "foo-1.ext",
#   "foo-10.1.ext",
#   "foo-10.ext",
#   "foo-100.ext",
#   "foo-13.ext",
#   "foo-2.0.0.ext",
#   "foo-2.0.1.ext",
#   "foo-2.0.ext",
#   "foo-2.007.ext",
#   "foo-2.01.ext",
#   "foo-2.012b.ext",
#   "foo-2.01a.ext",
#   "foo-2.0a.ext",
#   "foo-2.0b.ext",
#   "foo-2.1.ext",
#   "foo-25.ext",
#   "foo-6.ext",
# ]

# stripped_filenames = []
# filenames.each do |filename|
#   str_filename = filename.gsub("foo-", "").gsub(".ext", "")
#   stripped_filenames << str_filename
# end

# prefix = "foo-"
# suffix = ".ext"

# class Version
#   attr_reader :major, :feature_group, :feature, :bugfix
 
#   def initialize(version="")
#     v = version.split(".")
#     @major = v[0].to_i
#     @feature_group = v[1].to_i
#     @feature = v[2].to_i
#     @bugfix = v[3].to_i
#   end
 
#   def <=>(other)
#     return @major <=> other.major if ((@major <=> other.major) != 0)
#     return @feature_group <=> other.feature_group if ((@feature_group <=> other.feature_group) != 0)
#     return @feature <=> other.feature if ((@feature <=> other.feature) != 0)
#     return @bugfix <=> other.bugfix
#   end
 
#   def self.sort
#     self.sort!{|a,b| a <=> b}
#   end
 
#   def to_s
#     @major.to_s + "." + @feature_group.to_s + "." + @feature.to_s + "." + @bugfix.to_s
#   end
# end
 
# # Example Usage:
# list = []
# stripped_filenames.each {|v| list.push(Version.new(v)) }
# list.sort.each{|v| p prefix + v.to_s + suffix }


# Exercise: Flatten

# class Array
#   def flatten
#     flat_map do |item|
#       if item.is_a?(Array)
#         item.flatten
#       else
#         [item]
#       end
#     end
#   end
# end

# p [1, 2, [[{a: :b}]]].flatten #[1, 2, {:a => :b}]
# p [1, [2, 3, [4, 5, [6, 7]]], 8].flatten # [1, 2, 3, 4, 5, 6, 7, 8]




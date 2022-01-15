sym = :welcome_to_ruby
puts sym.start_with?("wel","to","zzz") 
puts sym.end_with?("by","zy") 
puts sym.succ
puts sym.to_s.gsub("_","")
puts sym.class
puts sym.upcase()
puts sym.downcase()
p sym.to_s
p sym
arr = []
sym.to_s.each_char do |i|
    arr.append(i.to_sym)
end
print arr
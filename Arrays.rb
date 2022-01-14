# A. Write a Ruby program for each of the following to get it out of an array of integers.

a = [1,2,3,4,5]
puts a.max
puts a.min
puts a.count
puts a.sum
count = 0
for i in a 
    count *= i
end    

# Write a Ruby program to check whether a value exists in an array using array APIs
puts a.include?(2)

# C. Write a ruby program that gets the count of each element in the array.ex: if
# a=[1,1,2,2,3,3,3] the output will be result=[[1,2],[2,2],[3,3]]
z=[0,1,1,2,2,3,3,3,3,4]

y={}

z.each_with_index do|element,index|
    if y.include?(element)
        y[element]+= 1
    else 
        y[element]=1 
    end
end 
print y.to_a

# Write two Ruby programs to compute the sum of elements in a given array of integers
# using iterators/reducers
sum1  = 0
z.each do |i|
    sum1 += i
end
puts
puts sum1

puts z.inject { |sum, n| sum + n } 





# Write a Ruby program to remove duplicate elements from a given array using array
# APIs.

print z.uniq
puts

# F. Write a Ruby program to create a new array of length 2 containing the middle two
# elements from a given array of integers of even length 2 or more using arrays APIs
arr = [1,1,1,1,2,2,1,1,1,1]
new_arr = []
new_arr.append(arr[arr.count/2-1])
new_arr.append(arr[arr.count/2])
print new_arr
puts

# Write a Ruby program to find the largest value from a given array of integers of odd
# length. The array length will be a least 1 using array APIs.
r=[2,2,4,56,4,652,586,4,43]
if r.length.odd?
    puts r.max
else
    puts "length of array is not odd"
end

# Write a Ruby program to compute the sum of the numbers of a given array except the
# number 17 and numbers that come immediately after a 17. Return 0 for an empty array
# using array APIs

r =[1,1,1,1,17,1]
index = 0
if r.include?(17)
    index = r.index(17)
end
r.delete_at(index)
r.delete_at(index)
sum2= 0
for i in r
    sum2 += i
end
puts sum2

# Write a Ruby program to check whether all items are identical in a given array using
# array APIs
arr = [1,1,1,2.1,1]
if arr.uniq.count == 1
    puts "all items are identical in the array "
else
    puts "NOT all items are identical in the array "
end

# Given an input text output it transposed.
# Roughly explained, the transpose of a matrix:
# ABC
# DEF
# is given by:
# AD
# BE
# CF

s1 = "ABC"
s2 = "DEF"

for i in 0..s1.length
    
    puts s1[i]+s2[i]
end
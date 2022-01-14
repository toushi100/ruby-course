arr=[1,2,3,4,5,6,7,8,9,10]

for i in arr
    print i," "
end 
puts
for i in arr
    unless i == 5 or i == 6
        
        print i," "        
    end
end 
puts
for i in arr
    if i < 6
        
        print i," "        
    end
end 
puts
for i in arr 
    if i.even?
        print i," "
    end
end
puts
for i in arr 
    unless i.even?
        print i," "
    end
end
puts
for i in arr 
    if i >= 2 and i<=9
        print i," "
    end
end
puts
for i in arr 
    unless i.even?
        print i," ODD "
        puts
    else
        print i," EVEN"
        puts
    end
    
end
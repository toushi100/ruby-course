emp = {
    10=>{name:"Ahmed",salary:1000},
    21=>{name:"Mohamed",salary:2000},
    113=>{name:"Mahmoud",salary:5000},
    4=>{name:"Yassin",salary:3000},
    52=>{name:"Taha",salary:4000},
    102=>{name:"Khadija",salary:nil},
    64=>{name:"Sara",salary:5000},
    37=>{name:"Nadine",salary:5000},
    88=>{name:"Doaa",salary:4000},
    90=>{name:"Iman",salary:4000},
    103=>{name:"Khadija",salary:1000},
    12=>{name:"Kholod",salary:nil},
    15=>{name:"Said",salary:nil},
    38=>{name:"Nadine",salary:5000},
    89=>{name:"Doaa",salary:4000},
    91=>{name:"Iman",salary:4000},
    104=>{name:"Khadija",salary:1000},
    17=>{name:"Kholod",salary:nil},
    14=>{name:"Said",salary:nil},
    }



# Gets all employees name
puts "Employees\' names"

emp.each_key do|i|
    puts emp[i][:name]
end

# Gets all employee IDs ex:[10,21,113,...]
puts "Employees\' IDs"
emp.each_key do|i|
    puts i
end


# Gets employees with the highest salary in an array along their ID
max = 0
arr = []
x = {}
emp.each_key do|i|
    unless emp[i][:salary] == nil
        if emp[i][:salary] >= max
            max = emp[i][:salary]
        end
    end
end
emp.each_key do|i|
    if emp[i][:salary] == max
        x ={name:emp[i][:name],salary: emp[i][:salary],id:i}
        arr.append(x)
    end
  
end
puts
print arr
puts


# Gets employees with lowest salary in a hash keeping their IDs
min = emp[10][:salary]
emp.each_key do|i|
    unless emp[i][:salary] == nil
        if emp[i][:salary] <= min
            min = emp[i][:salary]
        end
    end
end
y={}
emp.each_key do|i|
    if emp[i][:salary] == min
        y[i] = emp[i]
    end
  
end
print y
puts

# Gets average salaries
total = 0
count = 0
emp.each_key do|i|
    unless emp[i][:salary] == nil
        total += emp[i][:salary] 
        count+=1
        
    end
end
puts
print "AVERAGE : " ,total/count
# Remove employees with nil salary.
empe =emp.clone
empe.each_key do|i|
    if empe[i][:salary] == nil
       empe.delete(i)
    end
end
puts 
puts
p empe

# Gets hash a new hash with uniq employees (remove duplicate)
puts

r = emp.to_a
puts "#############################################################"
print r.uniq{ emp.each_key do |h| emp[h][:name] end}



z= [10, 20, 30, 40, 10, 10, 20]

y={}

z.each_with_index do|element,index|
    if y.include?(element)
            y[element]+= 1
    else 
            y[element]=1 
    end
end 
puts
print y 
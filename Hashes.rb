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













puts "Employees\' names"
emp.each_key do|i|
    puts emp[i][:name]
end


puts "Employees\' IDs"
emp.each_key do|i|
    puts i
end



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
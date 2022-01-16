# A. Write a Ruby program to check three given integers (a:smallest,b,c:largest) and return
# true if the three values are equally spaced, so the difference between a and b is the
# same as the difference between b and c.

a,b,c = 1,2,3

if c-b == b - a
    puts true
end

# B. Write a Ruby program to check three given integers a, b, c and return true if one of b or c
# is close (difference out of a by at most 1), while the other is far, difference from both
# other values by 3 or more.

if b-a <=1 || c-a<=1
    puts true
elsif b-a > 3 or c-a >3
    puts "far"
end

# C. Write a Ruby program to check two given integers, each in the range 10..99, return true
# if there is a digit that appears in both numbers.

digit_1 , digit_2 = 41,31
if (10 <=digit_1 and digit_1 <=99) and (10 <=digit_2 and digit_2 <=99)
    digit_1 = digit_1.digits
    digit_2 = digit_2.digits
    for i in digit_1
        for j in digit_2
            if i == j
                puts "true number appears in both"
                break
                
            end
        end
    end 
end

# D. Write a Ruby program to check two given integers and return true if either one is 11 or
# their sum or difference is 11 otherwise return false.
int_1, int_2 = 1,122
if int_1 == 11
    puts true
elsif int_2 == 11
    puts true
elsif int_1+int_2 == 11 or int_1-int_2 == 11 or int_2-int_1 == 11
    puts true
else 
    puts false
end

# E. Write a Ruby program to check whether 2 strings start and end with
# different letters and both of them doesn’t include letter “x”.

String_1 ,String_2 = "Jim","Oscar"
if  String_1[0] != String_2[0] and String_1[-1] != String_2[-1] and not String_1.include?('x') and not String_2.include?('x')
    puts "Strings start and end with different letters and both of them doesn\'t include letter \“x\”"
else
    puts "Strings may start and end with different letters and both of them does include letter \“x\”"
end

# F. Write a Ruby program that checks whether a string contains a vowel
some_string = "Michael Scott"
if some_string.scan(/[aeiou]/).count>0
    puts "Has Vowels"
else 
    puts "Does not have Vowels"    
end

# G. Write a Ruby program that keeps getting an integer at the console less than 100 score
# from the user, and exists when he inserts -1.
# If he inserted a number out of range, print the message :”Please insert a score from 0 to
# 100”.
# Your program shall print out the corresponding evaluation as follows:
# 0-49:fail.
# 50-60:pass
# 60-70:good
# 70-80:very good
# 80-90:excellent
# 90-100:incredible

check = true
while check 
    input = gets.chomp().to_i()
  
    if input == -1
        check = false
    elsif input< -1 or input > 100
        puts "Please insert a score from 0 to 100"
    elsif input >= 0 and input <=49
        puts "Fail ya fashel"
    elsif input >= 50 and input <=59
        puts "Pass"
    elsif input >= 60 and input <=68 
        puts "good"
    elsif input ==69 
        puts "Nice"
    elsif input >= 70 and input <=79
        puts "Very Good"
    elsif input >= 80 and input <=89
        puts "excellent"
    elsif input >= 90 and input <=100
        puts "incredible"
    end
end

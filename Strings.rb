text = "Hello Ruby World"
hello_removed_text =  text[6..-1]
puts hello_removed_text
welcome_added = "Welcome to " + hello_removed_text
puts welcome_added
replace_welcome  = welcome_added.sub! "World","Ahmed"
puts replace_welcome
quotes_added = replace_welcome.insert(16,"\"")+"\""
puts quotes_added
index_of_y = quotes_added.index("y")+1
comma_added = quotes_added.insert(index_of_y,",")
puts comma_added
tab_inserted = comma_added.insert(comma_added.index(',')+1,"\t")
puts tab_inserted
count = tab_inserted.length
puts count
space_replaced = tab_inserted.gsub(/[[:space:]]/,'-')
puts space_replaced




def separate_comma(integer)        # Defines method separate_comma - accepts integer as argument
  integer_string = integer.to_s    # Variable integer string is equal to integer converted to string of numbers
  split_integer_array = []         # Empty array - will push split numbers into this array 
  integer_string.split(//).reverse.each_slice(3) {|x| split_integer_array << x } #Splits string into individual digits, reverses the string order, groups digits by 3, and pushes each digit into an array
  
  separated_with_commas = [ ]      # New empty array that will contain numbers split with commas
  split_integer_array.each do |x|  # Says, "Take each element in the split_integer_array and...
    separated_with_commas << x     # ...push them into the array separated_with_commas"
    separated_with_commas << [ "," ] # pushes commas in between the groups of 3 digits.
  end # Ends the loop
  
  separated_with_commas.delete_at(separated_with_commas.length - 1) # Deletes the extra comma in front of the string so we don't get ",1,234,567,890", for example
  separated_with_commas.flatten.reverse.join # See reflection for more on #flatten. This line takes the separated_with_commas array, "flattens" its elements, reverses their order, and joins the contents together 
end # Ends the method 
 

puts separate_comma(1234567890)

## Driver Code ## 

puts separate_comma(1234567890) == "1,234,567,890" #=> true 
puts separate_comma(1234567890) == ",1,234,567,890" #=> false




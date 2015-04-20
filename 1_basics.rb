# Strings, integers, variables
# Simple methods, string interpolation

# The essential pattern in Ruby:
#    variable = object.method
first = "Majesh".capitalize
last = "Abraham".capitalize

full = first + " " + last
lucky_number = rand(1..100) + 7

# Adding strings together with the + operator
message1 = "Howdy, " + full + ". Your lucky number for today is " + lucky_number.to_s + "."
# is harder than withr	 String Interpolation
message2 = "Howdy, #{full}. Your lucky number for today is #{lucky_number}."

puts message1
puts message2

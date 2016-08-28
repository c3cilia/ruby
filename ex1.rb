puts "Hello world"
puts "Roosters #{100 - 25 * 3 % 4}"

cars = 100
puts "There are #{cars} cars available."

hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"
puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."

puts w + e

puts "." * 10  # what'd that do?

formatter = "%{first} %{second} %{third} %{fourth}"
puts formatter % {
  first: "I had this thing.",
  second: "That you could type up right.",
  third: "But it didn't sing.",
  fourth: "So I said goodnight."
}

days = "Mon Tue Wed Thu Fri Sat Sun"
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

puts "Here are the days: #{days}"
puts "Here are the months: #{months}"

puts """
There's something going on here.
With the three double-quotes.
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
"""

print "How old are you? "
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."


print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

# STRING MANIPULATION
##Does a string include some string subset
"hello".include? "l" # true

##Replacing chars in a string
"hello".replace("-") # -

##getting the length of a string
"hello".length # 5

##Replicating a string with *
"hello".replace("-" * "hello".length) # -----

##scanning a string returns an array with all the occurrences of the substring
"hello".scan('e') # ['e']

# ARRAY MANUPULATION
##counting items in an array
["a", 'b'].count #2


# RANGE MANIPULATION
## find_all #is found in enumerable module. returns all that match a given criteria
(0..10).find_all {|i| i%2 == 0}


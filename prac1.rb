# is this number even?
2.even?

# What are the methods with ints 
3.methods # .methods applies to all objects

# You can sort all the methods
3.methods.sort!

# You can find an index of an array given a value
['my', 'name', 'is', 'cess'].index('is')

# is a number between two others?
3.between?(-1, 10)

# Operators are methods?
3.+(5) # This is similar to
3 + 5  # This 

# Common operators + - * / = == != < <= > >= 
# [] operators works with arrays
greetings = ['my', 'name', 'is', 'cess']
greetings[1] # Used here to access the value at index 1; 1 is its argument

# To prove that it takes arguments, the line below is exactly similar to the one above
greetings.[](1)

#**************************************************************************************
# STRING LITERAL FORMS
# All strings in ruby are instances of the class String
# Difference between double and single quotes is that double quotes accepts escape sequences while single quotes do not
## String length
"cess".length

## String interpolation
"There are #{4+8} months in a year"

## String search
"[Luke:] I can’t believe it. [Yoda:] That is why you fail.".include? "Yoda"
"Ruby is a beautiful language".start_with? 'Ruby'
"I can't work with any other language but Ruby".end_with? "Ruby"
"I am a Rubyist".index('R')

## String case
'i am in lowercase'.upcase
'This is Mixed CASE'.downcase
"ThiS iS A vErY ComPlEx SenTeNcE".swapcase

## Splitting strings
'Fear is the path to the dark side'.split

## String pattern replacement 
"I am the best".gsub(" ", "_")
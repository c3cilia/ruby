####Setup
* [Installing RVM](http://ruby.about.com/od/rubyversionmanager/ss/installrvmlinux.htm) (This did not work)

####String functions 
###### .capitalize
print "This is my question?"
answer = gets.chomp
answer2 = answer.capitalize 
answer.capitalize!

###### .include?

```
if user_input.include? "s"
  user_input.gsub!(/s/, "th")
```

###### .gsub!

###### .split()

```
puts "Give me the first input"
text = gets.chomp
puts "Give me the second input"
redact = gets.chomp

words = text.split(" ") # space delimeter
```

####Type casting
###### Integer()
###### int.to_s
###### n.is_a

#### conditional statements
######If statement
```
if (conditional expression)
	//statements
elsif
	//statements
else
	//statements
end
```

######unless statement
Sometimes you want to use control flow to check if something is false, rather than if it's true.

```
hungry = false

unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end
```

####Operators 
==, !=, >, <, >=, <=, &&, ||, !

<=> combined comparison operator - compares two Ruby objects. It returns 0 if the first operand (item to be compared) equals the second, 1 if first operand is greater than the second, and -1 if the first operand is less than the second.


#### Loops
######until loop

```
i = 0
until i == 6
  i += 1
end
puts i
```

######for loop 
With non inclusive range

```
for num in 1...10
  puts num
end
```

With inclusive range

```
for num in 1...10
  puts num
end
```

######The Loop Method
In Ruby, curly braces ({}) are generally interchangeable with the keywords do (to open the block) and end (to close it). 

```
i = 20
loop do
  i -= 1
  print "#{i}"
    break if i <= 0
end
```

######Next!

```
i = 20
loop do
  i -= 1
  next if i % 2 != 0
  print "#{i}"
    break if i <= 0
end
```

######The .times Iterator
The .times method is like a super compact for loop: it can perform a task on each item in an object a specified number of times.

```
10.times {print "This is fun"}
```

###### While loop 

```
i = 0
while i < 50 do
    i+=1
    print i
end 
```


####Array 
######Looping through the array using .each

```
array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x}"
end
```

######Hash array
Creating a new hash with Hash.new 

```
pets = Hash.new
#similar to
pets = {} 
```

######Adding new hash 

```
pets = Hash.new
pets["micky"] = "cat"
```

######getting both key and value while iterating 

```
secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}

secret_identities.each do |code_name, real_name|
    puts "#{code_name}: #{real_name}"
end
```

#######Default values for a new hash. If you have a hash with a default value, and you try to access a non-existent key, you get that default value..

```
puts "Give me any sentence"
text = gets.chomp

words = text.split(" ")

frequencies = Hash.new(0)
```

######hash.sort_by and hash.reverse

```
puts "Give me any sentence"
text = gets.chomp

words = text.split(" ")

frequencies = Hash.new(0)
words.each do |word|
    frequencies[word] += 1
end

puts frequencies
frequencies = frequencies.sort_by do |word, count|
    count
end

frequencies.reverse!
```

###### sorting array values


######nil value
You get a nil value if you try accessing an index that does not exist in an array


####Functions 
######Splat arguments
Splat arguments are arguments preceded by a *

######DEfining functions with question mark at the end

```
#def greeter(name)
 #   return "How do you do #{name}?"
#end 

def by_three?(number)
    if number % 3 == 0
        return true
    else
        return false
    end
end 

greeter("cess")
by_three?(6)
```

######Blocks or anonymouse functions 
Blocks can be defined with either the keywords do and end or with curly braces ({}).

```
1.times do
  puts "I'm a code block!"
end

1.times { puts "As am I!" }
```



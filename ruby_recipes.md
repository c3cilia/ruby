####Setup
* [Installing RVM](http://ruby.about.com/od/rubyversionmanager/ss/installrvmlinux.htm) (This did not work)

####Strings 
######Ways of expressing strings 

"string" - normal double quotes
'string' - normal single quotes 
%Q{string} - Means string should have double quoutes 
%q{string} - means string should have single quotes 


###### String interpolation

```
"#{some_variable}"
```

###### .capitalize

```
print "This is my question?"
answer = gets.chomp
answer2 = answer.capitalize 
answer.capitalize!
```

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

####Regular expressions 
Use [rubular.com](http://rubular.com/) to test out regular expressions against strings


####Integers 
Integers are objects in ruby and you can call methods on them

```
3.day.ago # This works on rails and not plain ruby 
50.methods # What methods does 50 respond to 
50.respond_to?(:to_s) # Do you (50) respond to to a method called to_s?
50.send(:+, 10) # The .send methods sends a method to an object. This case it is sending the addition method
# The above is similar to

50 + 10

# This applies to other types as well
# String 

"cess".send(:length) ## same as 
"cess".length

# Arrays 
my_array[4] $ ## same as 
my_array.send(:[], 4)

my_array[3] = "foo" ##same as 
my_array.send(:[]=, 3, "foo")

#Conditions 
if (x == 3) ## same as 
if (x.send(:==, 3))

#Functions
my_func(z) ## same as 
self.send(:my_func, z)



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

######One line if 
General syntax

```
expression if boolean
```

example 

```
puts "nice" if true
```

#######One-Line Unless
General syntax

```
expression unless boolean
```

example 

```
puts "nice" unless false
```
######ternary conditional expression.
General syntax

```
boolean ? Do this if true: Do this if false
```

example 
```
puts 3 < 4 ? "3 is less than 4!" : "3 is not less than 4."
```

######case statements

```
case language
  when "JS" then puts "Websites!"
  when "Python" then puts "Science!"
  when "Ruby" then puts "Web apps!"
  else puts "I don't know!"
end
```



####Operators 
==, !=, >, <, >=, <=, &&, ||, !

<=> combined comparison operator - compares two Ruby objects. It returns 0 if the first operand (item to be compared) equals the second, 1 if first operand is greater than the second, and -1 if the first operand is less than the second.

<< shovel operator used to push things at the end of an array. it also works with strings


||= conditional assignment operator - works only if its previous value was falsy otherwise it does not do the assignment
```
avorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book
```

=~ This operator is used for matching strings with regular expressions

example 

```
"fox@berkeley.EDU" =~ /(.*)@(.*)\.edu$/i
``` 

Works in vise versa as well. If the string and the regular expression don't match, the value is false. If they match the value is non-false and $1..$n capture parenthesized groups ($1 == "fox", $2=="berkeley")

####Regular expressions
You can contruct Regular expressions with 

```
Regexp.new('(.*)$', Regexp::IGNORECASE)
```
which is similar to 

```
/(.*)$/i #or

%r{(.*)$}i
```


######Challenge
Given the following Ruby:

```
rx = {:fox=>/^arm/, 'fox'=>[%r{AN(DO)$}, /an(do)/i]}
```

Which expression will evaluate to non-nil?

```"armando" =~ rx{:fox}``` or ``` rx[:fox][1] =~ "ARMANDO"``` or ```rx['fox'][1] =~ "ARMANDO"``` or ```"armando" =~ rx['fox', 1]```

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

###### ```.upto``` and ```.downto```

```
"L".upto("P") { |let| puts let}
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
Note: nil and false are the only non true values in ruby all other values are truthy. False and nill are not the same thing. False means "not true" and nil means "nothing at all". If you set a default value with hash constructor then you get that default value if you try accessing a non existent key in the hash

######symbols 
A symbols is like an immutable string whose value is itself. The only difference of the using symbols as keys as opposed to strings is that the value for a symbol is unique as well i.e you can only have one copy of any given symbol

```
puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id
```

The .object_id method gets the ID of an object—it's how Ruby knows whether two objects are the exact same object. If you run the code you will see that the two "strings" are actually different objects, whereas the :symbol is the same object listed twice. Symbols always start with a colon (:). They must be valid Ruby variable names, so the first character after the colon has to be a letter or underscore (_); after that, any combination of letters, numbers, and underscores is allowed.

Note: You can assign a variable a symbol like belo

```
# Write your code below!
my_first_symbol = :name 
```

Symbols pop up in a lot of places in Ruby, but they're primarily used either as hash keys or for referencing method names. Symbols make good hash keys for a few reasons:

* They're immutable, meaning they can't be changed once they're created;
* Only one copy of any symbol exists at a given time, so they save memory;
* Symbol-as-keys are faster than strings-as-keys because of the above two reasons. The code below proves it 

```
require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."
```

```.to_a``` means convert to array. ```.zip``` method will combine the elements of two arrays.

Converting between strings and symbols is a snap. Just use ```.to_s``` and ```.to_sym```. You can use ```.intern``` instead of ```.to_sym```


```
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!
symbols = []

strings.each do |str|
    symbols.push(str.to_sym)
end
```

######Change of the Hash rocket syntax to just a colon in ruby 9.1
The two changes are:

* You put the colon at the end of the symbol, not at the beginning;
* You don't need the hash rocket anymore.

Note: It's important to note that even though these keys have colons at the end instead of the beginning, they're still symbols!


######.select for selection
You can select something in a hash by specifying a select critaria

```
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!

good_movies = movie_ratings.select do |movie, rating|
    rating > 3
end
```

###### ```.each_key``` and ```.each_value```

```
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!

movie_ratings.each_key {|k| puts k}
```

###### deleting items from a hash with ```.delete```

```
movies.delete(title.to_sym)
```


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

```Operators
1.times do
  puts "I'm a code block!"
end

1.times { puts "As am I!" }
```

###### ```.collect``` used as a block
The collect method takes a block and applies the expression in the block to every element in an array. Check it out:

```
my_nums = [1, 2, 3]
my_nums.collect { |num| num ** 2 }
# ==> [1, 4, 9]
```

If we look at the value of my_nums, though, we'll see it hasn't changed:

```
my_nums
# ==> [1, 2, 3]
```

This is because .collect returns a copy of my_nums, but doesn't change (or mutate) the original my_nums array
If we want to do that, we can use .collect! with an exclamation point:

```
my_nums.collect! { |num| num ** 2 }
# ==> [1, 4, 9]
my_nums
# ==> [1, 4, 9]
```

###### ```yield``
Why do some methods accept a block and others don't? It's because methods that accept blocks have a way of transferring control from the calling method to the block and back again. We can build this into the methods we define by using the yield keyword.
Check this out

```
def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }
```

EXERCISE
Define your own method, double, that accepts a single parameter and yields to a block. Then call it with a block that multiplies the number parameter by 2. You can double any number you like!


###### procs for blocks
You can think of a proc as a "saved" block: just like you can give a bit of code a name and turn it into a method, you can name a block and turn it into a proc. Procs are great for keeping your code DRY, which stands for Don't Repeat Yourself. With blocks, you have to write your code out each time you need it; with a proc, you write your code once and can use it many times!

Example 1
```
multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

(1..100).to_a.select(&multiples_of_3)
```

Example 2

```
cube = Proc.new { |x| x ** 3 }
[1, 2, 3].collect!(&cube)
# ==> [1, 8, 27]
[4, 5, 6].map!(&cube)
# ==> [64, 125, 216]
```

(The .collect! and .map! methods do the exact same thing.)
The & is used to convert the cube proc into a block (since .collect! and .map! normally take a block). We'll do this any time we pass a proc to a method that expects a block.
Why bother saving our blocks as procs? There are two main advantages:
* Procs are full-fledged objects, so they have all the powers and abilities of objects.
* Unlike blocks, procs can be called over and over without rewriting them. This prevents you from having to retype the contents of your block every time you need to execute a particular bit of code.
* Unlike blocks, we can call procs directly by using Ruby's .call method. Check it out!

```
test = Proc.new { # does something }
test.call
```

###### Symbols, Meet Procs
you can also convert symbols to procs using that handy little &.

```
strings = ["1", "2", "3"]
nums = strings.map(&:to_i)
# ==> [1, 2, 3]
```

#######Ruby lambda
Like procs, lambdas are objects. The similarities don't stop there: with the exception of a bit of syntax and a few behavioral quirks, lambdas are identical to procs. Lambdas are defined using the following syntax:

```
lambda { |param| block }
```

This 

```
lambda { puts "Hello!" }
```

is the same as 

```
Proc.new { puts "Hello!" }
```

Example 
```
def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })
```

###### Lambdas vs. Procs
If you're thinking that procs and lambdas look super similar, that's because they are! There are only two main differences.
* A lambda checks the number of arguments passed to it, while a proc does not. This means that a lambda will throw an error if you pass it the wrong number of arguments, whereas a proc will ignore unexpected arguments and assign nil to any that are missing.
* When a lambda returns, it passes control back to the calling method; when a proc returns, it does so immediately, without going back to the calling method. The code below will illustrate this 

```
def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda
```

* Challenge 1
	* Create a lambda, ```symbol_filter```, that takes one parameter and checks to see if that parameter ```.is_a? Symbol```.
	* Create a new variable called ```symbols```, and store the result of calling ```my_array.select``` and passing it your lambda.
* Challenge 2
	* Given an array with all sorts of objects, create a variable, ```ints```, and store the result of calling ```.select``` method on the array with a block that checks if each element ```.is_a? Integer```.

	```
	odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

	ints = odds_n_ends.select {|n| n.is_a? Integer}
	
	```

* Challenge 3
	* Create a proc called ```under_100``` that checks if a number it's passed is less than 100. 
	* Given an array with all sorts of numbers use the proc to filer all nummbers that are under 100 and store in a variable called ```youngsters```

	```
	ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

	under_100 = Proc.new {|n| n < 100}
	youngsters = ages.select(&under_100)
	```

* Challenge 4
	* Given the hash below, create a lambda called ```first_half``` that checks if a value is less then "M" in the alphabet
	* Create a varible called ```a_to_m``` that stores the result of filtering the hash with the lambda.

```
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

first_half = lambda {|key, value| value < "M"}
a_to_m = crew.select(&first_half)
```


######Review of blocks, procs and lambdas
* A block is just a bit of code between ```do..end``` or ```{}```. It's not an object on its own, but it can be passed to methods like ```.each``` or ```.select```.
* A proc is a saved block we can use over and over.
* A lambda is just like a proc, only it cares about the number of arguments it gets and it returns to its calling method rather than returning immediately.



######Implicit Return
Ruby's methods will return the result of the last evaluated expression.
This code and the one below it are the same

```
def add(a,b)
  return a + b
end
```

```
def add(a,b)
  a + b
end
```

######referencing method names with symbols 
You can use ```.respond_to?``` which takes a symbol and returns true if an object can receive that method and false otherwise.

```
[1, 2, 3].respond_to?(:push)
```

would return true, since you can call .push on an array object. However,

```
[1, 2, 3].respond_to?(:to_sym)
```

would return false, since you can't turn an array into a symbol.


####Classes in Ruby 
####### ```initialize```
This function initializes the class

example

```
class Person
    def initialize(name)
        @name = name
    end 
end 

matz = Person.new("Yukihiro")
```

######Scope 
There are three possible types of scopes in a class 
* Instance variable - variable belongs to the instance of a class. They start with ```@```

```
class Person
  def initialize(name, age, profession)
    @name = name
    @age = age
    @profession = profession
  end
end
```

* Class variable - variable belong to the class. They start with ```@@```. You can use class variables to for example keep track of the number of instances of that class we've created

```
class Person
  # Set your class variable to 0 on line 3
  @@people_count = 0
  
  def initialize(name)
    @name = name
    # Increment your class variable on line 8
    @@people_count += 1
  end
  
  def self.number_of_instances
    # Return your class variable on line 13
    return @@people_count
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}"
```

* Global variable - start with ```$```

```
class MyClass
  $my_variable = "Hello!"
end

puts $my_variable
```

#######Inheritance 

```
class DerivedClass < BaseClass
  # Some stuff!
end
```	

######Overriding 

```
class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!
class Dragon < Creature
    def fight()
        return "Breathes fire!"
    end 
end 
```

######super Keyword

Example 1

```
class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!
class Dragon < Creature
    def fight()
        puts "Instead of breathing fire.."
        super 
    end 
end 
```
Example 2

```
class Message
    @@messages_sent = 0
    def initialize(from, to)
        @from =from
        @to = to
        @@messages_sent += 1
    end 
end 

class Email < Message
    def initialize(from, to)
        super(from, to)
    end 
end
my_message = Message.new("cecilia", "mum")
```

Example 3

```
class Computer
    @@users = {}
    def initialize(username, passowrd)
        @username = username
        @passowrd = password
        @files = {}
        @@users[username] = password
        
    end 
    
    def create(filename) 
        time = Time.now
        @file[filename] = time
        puts "Hi #{username}. File #{filename} has been created at #{time}"
    end 
end 
```

Note: Ruby does not allow a class to have more than one super class

######Class methods 

```
class Machine
  def Machine.hello
    puts "Hello from the machine!"
  end
end
```

######Public and private methods 
Methods are public by default in Ruby.

```
lass Dog
    def initialize(name, breed)
        @name = name
        @breed = breed
    end
    
    public 
    def bark
        puts "Woof!"
    end 
    
    private 
    def id
        @id_number = 12345
    end 
end 
```

######attr_reader, attr_writer

if we want to access a @name instance variable, we had to write something like

```
def name
  @name
end
```

Well, no longer! We can use attr_reader to access a variable and attr_writer to change it. If we write

```
class Person
  attr_reader :name
  attr_writer :name
  def initialize(name)
    @name = name
  end
end
```

Ruby does something like this for us automatically:

```
def name
  @name
end

def name=(value)
  @name = value
end
```

That name= might look funny, but you're allowed to put an = sign in a method name. That's just a Ruby convention saying, "hey, this method sets a value!

Example of refactored code. This code is similar to 

```
class Person
  def initialize(name, job)
    @name = name
    @job = job
  end
  
  def name
    @name
  end
  
  def job=(new_job)
    @job = new_job
  end
end
```

This code

```
class Person
  def initialize(name, job)
    @name = name
    @job = job
  end
  
  attr_reader :name
  attr_writer :job
  
end
```

######attr_accessor
If we want to both read and write a particular variable, there's an even shorter shortcut than using attr_reader and attr_writer. We can use attr_accessor to make a variable readable and writeable in one fell swoop. This is what is called mataprogramming i.e code that defines, writes and runs new code at runtime 

```
class Person
  attr_reader :name
  attr_accessor :job
  
  def initialize(name, job)
    @name = name
    @job = job
  end
end
```




#### What's a Module?
You can think of a module as a toolbox that contains a set methods and constants. Modules are super easy to make! You just use the module keyword, like so:

```
module ModuleName
  # Bits 'n pieces
end
```

Like class names, module names are written in CapitalizedCamelCase, rather than lowercasewithunderscores.
One of the main purposes of modules is to separate methods and constants into named spaces. This is called (conveniently enough) namespacing, and it's how Ruby doesn't confuse ```Math::PI``` and ```Circle::PI```. This is called (conveniently enough) namespacing, and it's how Ruby doesn't confuse Math::PI and Circle::PI.

```
puts Math::PI
```

Some modules, like Math, are already present in the interpreter. Others need to be explicitly brought in, however, and we can do this using require. 

```
require 'date'

puts Date.today
```

A nice effect of this is that you no longer have to prepend your constants and methods with the module name. Since everything has been pulled in, you can simply write PI instead of Math::PI.

```
class Angle
  include Math
  attr_accessor :radians
  
  def initialize(radians)
    @radians = radians
  end
  
  def cosine
    cos(@radians)
  end
end

acute = Angle.new(1)
acute.cosine
```

######Mixins 
When a module is used to mix additional behavior and information into a class, it's called a mixin. Mixins allow us to customize a class without having to rewrite code!

```
module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump
```

######Mimicing multiple inheritance
```
# Create your module here!
module MartialArts
    def swordsman
        puts "I'm a swordsman"
    end
end
class Ninja
  include MartialArts
  def initialize(clan)
    @clan = clan
  end
end

class Samurai
    include MartialArts
  def initialize(shogun)
    @shogun = shogun
  end
end
```

###### extends
Whereas include mixes a module's methods in at the instance level (allowing instances of a particular class to use the methods), the extend keyword mixes a module's methods at the class level. This means that class itself can use the methods, as opposed to instances of the class

```
# ThePresent has a .now method that we'll extend to TheHereAnd

module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now
```

######Exampe Challenge

```
class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end
  
  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  
  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    "Access denied: incorrect PIN."
  end
end

my_account = Account.new("Eric", 1_000_000)
my_account.withdraw(11, 500_000)
my_account.display_balance(1234)
my_account.withdraw(1234, 500_000)
my_account.display_balance(1234)
```


####Concepts 
Reflections - we can as an object questions at run time and we can have it modify itself at run time
Metaprogramming - lets us define new code at runtime 
Introspection - You can ask ruby objects questions at runtime. 

Ruby has open classes --> this needs to be practiced a little bit more
method_mising -- need to practice this a little bit more



###Questions 
* What is the convention for naming classes, methods and variables in Ruby
* What does it mean if a fuction ends with a question mark (?) or bang (!)
* What is the convention for naming constants 
* What is the convention for naming globals
* What is a symbols and what is the syntax for a symbol
* When will you want to use a string as opposed to a string 
* What does it mean by a variable has no declarations 
* What are optional arguments
* Everything can be passed by reference except what? 
* What is the difference between false and nil
* Give 4 ways of expressing regular expression
* what is #{} for when used inside a string
* What is this =~ operator used for? 


##New Way of visualizing this
Everything in ruby is an object. You should visualize yourself as an object. Think about the many things that make that object and the many things that the object can possibly do. 

All objects are happy to tell you what methods are possible. Just call the the .method method on the object. 
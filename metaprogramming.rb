#***********************************************************************************************************
#***********************************************************************************************************
# METAPROGRAMMING
# This is writing code that acts on code rather than data. This involves inspecting and modifying the program as it runs. 

## Reopening classes
class Array
  def foldl(method)
    inject {|result, i| result.send(method, i) }
  end
end

[32.0, 2.0 , 2.0, 2.0, 2.0].foldl("/") # Feel free to experiment with this

## Dynamic method calls
# If you have a method don't know what methods are possible before hand 
class Glider
  def lift
    puts "Rising"
  end
  
  def bank
    puts "Turning"
  end
end

class Nomad
  def initialize(glider)
    @glider = glider
  end

  def do(action)
    @glider.send(action)
  end
end
#nomad = Nomad.new(Glider.new)
#nomad.do("lift")
#nomad.do("bank")

## Dynamic dispatch

# what if you don't know the arguments before hand either, send allows for you to add more additional arguments
class Nomad
  def initialize(glider)
    @glider = glider
  end

  def do(action, argument = nil)
    if argument == nil
      @glider.send(action)
    else
      @glider.send(action, argument)
    end
  end
end

# send is a sneaky way of calling private methods
## Challenge - The relay method below accepts an array and data_type as argument. The method should return a new array with all elements 
## converted into the specified data type
def relay(array, data_type)
  test = array.map! {|item| item.send("to_#{data_type}")}
end

## Method missing 
# This is a private method defined on the BasicObject
class SuperHash
  def initialize(hash)
    @hash = hash
  end

  def method_missing name
    name = name.to_sym
    if @hash.has_key?(name)
      @hash[name]
    else
      nil
    end
  end 

end

## Method missing example 3
class MethodCall
  def initialize(sym, args)
    @sym = sym
    @args = args
  end
  
  def sym
    @sym
  end
  
  def args
    @args
  end
  
  def ==(other_call)
    @sym == other_call.sym && @args == other_call.args
  end
end

class Spy
  def initialize
    @method_calls = []
  end
  
  def method_missing(sym, *args) 
    @method_calls << MethodCall.new(sym, args)
  end

  def method_called?(sym, *args)
    @method_calls.include?(MethodCall.new(sym, args))
  end
end
  
spy = Spy.new()
spy.test("name", "gender")

print spy.method_called?(:test, "name", "gender")
puts



##*********************************************************************************
# 1) 



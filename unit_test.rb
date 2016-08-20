require_relative "exercises/metaprogramming_exercises"
require_relative "exercises/blocks_iterators_exercises"
require_relative "exercises/mixins_and_duck_typing_exercises"
require_relative "exercises/blocks_yield"

require "test/unit"

class TestMetaprogramming < Test::Unit::TestCase 
	def test_class_reopening
		assert_equal([1000, 100, 100, 100].calc("-"), 700)
		assert_equal([2.0, 3.0, 4.0].calc("*"), 24.0)
		assert_equal([40.0, 2.0, 2.0].calc("+"), 44)
		assert_equal([32.0, 2.0 , 2.0, 2.0, 2.0].calc("/"), 2)
	end
	#def test_dynamic_method_calling
		#assert_equal(Aninamal.new(Action.new))
	#end # NOT COMPLETE

	#def test_method_missing1
		#assert_equal(SuperHash.new({"one": 1, "two": 2, "three": 3}).three, 3)
		#assert_equal(SuperHash.new({"age": 16, "name": "Cecilia"}).name, "Cecilia")
		#assert_equal(SuperHash.new({"country_name": "Kenya", "country_code": 254, "three": 3}).features, nil)
		#assert_equal(SuperHash.new({"country_name": "Kenya", "country_code": 254, "three": 3}).country_name, "Kenya")
		#assert_equal(SuperHash.new({"country_name": "Kenya", "country_code": 254, "three": 3}).country_code, 254)
	#end

	#def test_method_missing2
		#assert_equal(Convert.new().i(["1", "2", "3", "4"]), [1, 2, 3, 4]) # convert an array of strings to an array of ints
		#assert_equal(Convert.new().s([1, 2, 3, 4]), ["1", "2", "3", "4"] ) # convert an array of ints to an array of strings
		#assert_equal(Convert.new().sym(["cecilia", "is", "the", "best"]), [:cecilia, :is, :the, :best]) # convert an arrray of strings to an array of symbols 
	#end
	#def test_method_missing3
		#spy = Spy.new()
		#spy.test("name", "gender")
		#assert_equal(spy.method_called?(:test, "name", "gender"), true)
	#end

	#def test_method_missing4
	#	assert_equal(10.euros, 1147.0)
	#	assert_equal(1.euro, 114.7)
	#	assert_equal(10.yen, 9.7)
	#	assert_equal(1.dolar, 101.90)
	#	assert_equal(10.dolars, 1019.0)

	#end

	#def test_define_method
	#	person = Person.new()
	#	assert_equal(person.walked("market"), "walked to the market.")
	#	assert_equal(person.ran("Mombasa"), "ran to the Mombasa.")
	#	assert_equal(person.flew("Canada"), "flew to the Canada.")
	#end
end  

class TestBlocksAndIterators < Test::Unit::TestCase

	#def test_each_on_an_array
	#	assert_equal(person(["cecilia", 26, "female"]), ["cecilia", 26, "female"])
	#end

end

class TestMixinsDuckTypingNamespacesExercises < Test::Unit::TestCase
	#def test_mixins
	#	assert_equal(Rectangle.new(20, 10).perimeter, 60)
	#	assert_equal(Square.new(20).perimeter, 80)
	#end 
	#def test_namespaces
	#	assert_equal(RubyMonk::Parser::TextParser.parse("cess"), ['C', 'E', 'S', 'S'])
	#end
end 
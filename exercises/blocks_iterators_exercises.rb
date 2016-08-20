=begin
NOTES
Ruby allows objets to manage their own traversals	

	
=end
####
# AREA BEING TESTED: Array traversal
["Jenna", 14, "female"].each do |trait|
	trait
end

####
# AREA BEING TESTED: Range traversal
# The two iterators below are doing the same thing 
1.upto 10 do |num|
	num
end

3.times { "Hip hop, "}

####
# AREA BEING TESTED: Hash traversal
{"name" => "Jenna", "age" => 14, "gender" => "female"}.each_key do |key|
	key
end 

{"name" => "Jenna", "age" => 14, "gender" => "female"}.each_pair do |key, value|
	key
end 

####
# AREA BEING TESTED: sorting elements of an array
x = ["banana", "banana", "orange", "avocado"]
x.sort

####
# AREA BEING TESTED: testing for unique elements in the array
x.uniq

####
# AREA BEING TESTED: reversing array elements
x.uniq.reverse

####
# AREA BEING TESTED: Do something with array element with .map and return a new array
x.map! {|string| string.reverse}

####
# AREA BEING TESTED: For each element return true if it satisfies the condition
x.collect {|f| f.include? 'e'}

####
# AREA BEING TESTED: Return true if there is .any? element that satsfies a condition
x.any? {|f| f.length > 10}

####
# AREA BEING TESTED: .select all items that that match the condition in the block
x.select {|f| f.match(/^a/)}

 


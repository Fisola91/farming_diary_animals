require_relative "cow"
require_relative "chicken"


puts "\n\n Day One: Animal Talk"
# Instantiate Cow and Animal class
cow = Cow.new
chicken = Chicken.new

# Implement talk method for cow animal
puts "The cow says #{cow.talk}"

# Implement talk method for male chicken
puts "The female chicken says #{chicken.talk("female")}"

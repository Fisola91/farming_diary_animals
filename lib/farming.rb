require_relative "cow"
require_relative "chicken"


puts "\n\n Day One: Animal Talk"
# Instantiate Cow and Animal class
cow = Cow.new
male_chicken = Chicken.new("male")
female_chicken = Chicken.new("female")


# Implement talk method for cow animal
puts "The cow says #{cow.talk}"
begin
  # Implement talk method for male chicken
  puts "The male chicken says #{male_chicken.talk}"

  # Implement talk method for female chicken
  puts "The female chicken says #{female_chicken.talk}"
rescue NameError
  puts "Error: Enter correct gender name"
end

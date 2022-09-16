require_relative "cow"
require_relative "chicken"


# Instantiate Cow and Animal class
cow = Cow.new
male_chicken = Chicken.new("male")
female_chicken = Chicken.new("female")

puts "\n\n Day One: Animal Talk"
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


puts "\n\n Day Two: Feed The Animals"
# Feed the cow
cow.feed!
puts "The cow produced #{cow.milk} litters of milk"

# Feed the chicken
female_chicken.feed!
puts "The female chicken produced #{female_chicken.eggs} eggs"
male_chicken.feed!
puts "The male chicken produced #{male_chicken.eggs} eggs"

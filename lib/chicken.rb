require_relative "animal"

class Chicken < Animal
  attr_accessor :gender, :eggs
  def initialize(gender)
    @gender = gender
    @energy = 0
    @eggs = 0
  end

  def talk
    if @gender == "female"
      "cluck cluck"
    elsif @gender == "male"
      "cock-a-doodle-doo"
    else
      raise NameError
    end
  end

  def feed!
    @energy += 1
    @gender == "female" ? @eggs += 2 :  @eggs += 0
  end
end

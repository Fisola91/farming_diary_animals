require_relative "animal"

class Chicken < Animal
  def initialize(gender)
    @gender = gender
    super()
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
    super
    @gender == "female" ? @eggs += 2 :  @eggs += 0
  end

  private

  attr_accessor :gender, :eggs
end

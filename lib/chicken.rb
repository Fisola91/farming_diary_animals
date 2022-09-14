class Chicken
  attr_accessor :gender
  def initialize(gender)
    @gender = gender
    @energy = 0
  end

  def talk
    if @gender == "female"
      "cluck cluck"
    elsif @gender == "male"
      "cock-a-doodle-doo"
    end
  end
end

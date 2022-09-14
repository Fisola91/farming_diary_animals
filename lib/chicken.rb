class Chicken
  def initialize
    @energy = 0
  end

  def talk(gender)
    if gender == "female"
      "cluck cluck"
    else
      "cock-a-doodle-doo"
    end
  end
end

class Cow
  def initialize
    @energy = 0
    @milk = 0
  end

  def talk
    "moo"
  end

  def feed!
    @energy += 1
    @milk += 2
  end
end

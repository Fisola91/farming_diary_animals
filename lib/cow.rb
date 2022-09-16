require_relative "animal"

class Cow < Animal
  def initialize
    super
    @milk = 0
  end

  def talk
    "moo"
  end

  def feed!
    super
    @milk += 2
  end

  private

  attr_reader :milk

end

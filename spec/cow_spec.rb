require "cow"

RSpec.describe Cow do
  let(:cow) { Cow.new }

  describe "#talk" do
    it "should talk" do
      expect(cow.talk).to eq("moo")
    end
  end

  describe "#feed!" do

    it "should add 2 liters of milk" do
      cow.feed!
      expect(cow.instance_variable_get(:@milk)).to eq(2)
      cow.feed!
      expect(cow.instance_variable_get(:@milk)).to eq(4)
    end
    it "should add 1 energy" do
      cow.feed!
      expect(cow.instance_variable_get(:@energy)).to eq(1)
    end
  end
end

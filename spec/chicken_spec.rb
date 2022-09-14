require "chicken"

RSpec.describe Chicken do
  let(:chicken) { Chicken.new }

  describe "#talk" do
    it "returns cluck cluck when female chicken talks" do
      expect(chicken.talk("female")).to eq("cluck cluck")
    end

    it "returns cock-a-doodle-doo when female chicken talks" do
      expect(chicken.talk("male")).to eq("cock-a-doodle-doo")
    end
  end

end

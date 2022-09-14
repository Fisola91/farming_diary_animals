require "chicken"

RSpec.describe Chicken do
  let(:male_chicken) { Chicken.new("male")}
  let(:female_chicken) { Chicken.new("female")}
  let(:other_chicken_types) {Chickem.new("others")}

  describe "#talk" do
    it "returns cluck cluck when female chicken talks" do
      expect(female_chicken.talk).to eq("cluck cluck")
    end

    it "returns cock-a-doodle-doo when female chicken talks" do
      expect(male_chicken.talk).to eq("cock-a-doodle-doo")
    end
  end

  describe "error" do
    it "should raise error if gender is different from male and female gender" do
      expect { other_chicken_types.talk }.to raise_error(NameError)
    end


  end

end

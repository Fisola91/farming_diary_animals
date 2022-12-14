require "chicken"

RSpec.describe Chicken do
  let(:male_chicken) { Chicken.new("male")}
  let(:female_chicken) { Chicken.new("female")}
  let(:other_chicken_types) {Chickem.new("others")}

  describe "#talk" do
    context "gender" do
      it "returns cluck cluck when female chicken talks" do
        expect(female_chicken.talk).to eq("cluck cluck")
      end

      it "returns cock-a-doodle-doo when male chicken talks" do
        expect(male_chicken.talk).to eq("cock-a-doodle-doo")
      end
    end

    context "error in gender" do
      it "should raise error if gender is different from male and female gender" do
        expect { other_chicken_types.talk }.to raise_error(NameError)
      end
    end
  end

  describe "#feed!" do
    it "it should add 1 energy" do
      male_chicken.feed!
      expect(male_chicken.instance_variable_get(:@energy)).to eq(1)
      female_chicken.feed!
      expect(female_chicken.instance_variable_get(:@energy)).to eq(1)
    end

    it "should produce 2 eggs for female chicken" do
      female_chicken.feed!
      expect(female_chicken.instance_variable_get(:@eggs)).to eq(2)
      female_chicken.feed!
      expect(female_chicken.instance_variable_get(:@eggs)).to eq(4)
    end

    it "should produce zero eggs for male chicken" do
      male_chicken.feed!
      expect(male_chicken.instance_variable_get(:@eggs)).to eq(0)
    end
  end
end

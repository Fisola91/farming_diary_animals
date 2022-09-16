require "animal"
require "chicken"
require "cow"


RSpec.describe Animal do
  let(:animal) { Animal.new }

  describe "inheritance" do
    context "Chicken" do
      it "should inherit from ´Animal´" do
        expect(Chicken.superclass).to eq(Animal)
      end

      it "should define specific methods" do
        expect(Chicken.instance_methods(false)).to include(:talk)
      end

      it "should duplicate the ´Chicken´ shared methods methods" do
        expect(Chicken.instance_methods(false)).to include(:feed!)
      end
    end

    context "Cow" do
      it "should inherit from ´Animal´" do
        expect(Cow.superclass).to eq(Animal)
      end

      it "should define specific methods" do
        expect(Cow.instance_methods(false)).to include(:talk)
      end

      it "should duplicate the ´Chicken´ shared methods methods" do
        expect(Cow.instance_methods(false)).to include(:feed!)
      end
    end

    context "Animal" do
      it "should increase animal energy by 1" do
        animal.feed!
        expect(animal.instance_variable_get(:@energy)).to eq(1)
      end
    end
  end

end

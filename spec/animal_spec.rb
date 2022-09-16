require "animal"
require "chicken"
require "cow"


RSpec.fdescribe Animal do
  let(:animal) { Animal.new }

  describe "inheritance" do
    context "Chicken" do
      it "should inherit from ´Animal´" do
        expect(Chicken.superclass).to eq(Animal)
      end

      it "should define specific methods" do
        expect(Chicken.instance_methods(false)).to include(:talk)
        expect(Chicken.instance_methods(false)).to include(:gender)
        expect(Chicken.instance_methods(false)).to include(:eggs)
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
        expect(Cow.instance_methods(false)).to include(:milk)
      end

      it "should duplicate the ´Chicken´ shared methods methods" do
        expect(Cow.instance_methods(false)).to include(:feed!)
      end

    end
  end

end

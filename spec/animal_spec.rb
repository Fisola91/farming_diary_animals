require "animal"
require "chicken"

RSpec.fdescribe Animal do
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
  end

end

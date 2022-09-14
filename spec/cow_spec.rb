require "cow"

RSpec.describe Cow do
  let(:cow) { Cow.new }
  it "should talk" do
    expect(cow.talk).to eq("moo")
  end
end

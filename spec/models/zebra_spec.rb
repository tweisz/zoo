require 'rails_helper'

RSpec.describe Zebra, type: :model do

	it "has a weight" do
		zebra = Zebra.create
		expect(zebra).to have_attribute(:weight)
	end

	it "is valid with a weight" do
		zebra = Zebra.create
		expect(zebra).to be_valid
	end

	it "has a weight that can be specified" do
		zebra = Zebra.create(weight: 500)
		expect(zebra.weight).to eq(500)
	end

end

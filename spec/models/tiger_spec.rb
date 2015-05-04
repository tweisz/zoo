require 'rails_helper'

RSpec.describe Tiger, type: :model do

	it "has an appetite" do
		tiger = Tiger.new
		expect(tiger).to have_attribute(:appetite)
	end

	it "has a default appetite of 100" do
		tiger = Tiger.new
		expect(tiger.appetite).to eq(100)
	end

	it "is valid with an appetite" do
		tiger = Tiger.new
		expect(tiger).to be_valid
	end

	it "has an appetite that can be specified" do
		tiger = Tiger.new(appetite: 500)
		expect(tiger.appetite).to eq(500)
	end

	it "is hungry when its appetite is > 0" do
		tiger = Tiger.new
		expect(tiger.hungry?).to eq(true)
	end

	it "is not hungry when its appetite is = 0" do
		tiger = Tiger.new(appetite: 0)
		expect(tiger.hungry?).to eq(false)
	end
	
end

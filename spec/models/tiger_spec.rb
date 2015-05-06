require 'rails_helper'

RSpec.describe Tiger, type: :model do

	it "has an appetite" do
		tiger = Tiger.create
		expect(tiger).to have_attribute(:appetite)
	end

	it "has a default appetite of 100" do
		tiger = Tiger.create
		expect(tiger.appetite).to eq(100)
	end

	it "is valid with an appetite" do
		tiger = Tiger.create
		expect(tiger).to be_valid
	end

	it "has an appetite that can be specified" do
		tiger = Tiger.create(appetite: 500)
		expect(tiger.appetite).to eq(500)
	end

	it "is hungry when its appetite is > 0" do
		tiger = Tiger.create
		expect(tiger.hungry?).to eq(true)
	end

	it "is not hungry when its appetite is = 0" do
		tiger = Tiger.create(appetite: 0)
		expect(tiger.hungry?).to eq(false)
	end

	it "loses its appetite after eating a zebra" do
		tiger = Tiger.create(appetite: 800)
		zebra = Zebra.create(weight: 500)
		tiger.eat(zebra)
		expect(tiger.appetite).to eq(300)
	end

	it "removes the zebra from the zoo after eating" do
		tiger = Tiger.create
		zebra = Zebra.create(weight: 400)
		id = zebra.id
		tiger.eat(zebra)
		expect(Zebra.where(id: id)).to_not exist
	end
	
end

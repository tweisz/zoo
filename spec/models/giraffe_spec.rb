require 'rails_helper'

RSpec.describe Giraffe, type: :model do

  it "has a status" do
		giraffe = Giraffe.new
		expect(giraffe).to have_attribute(:height)
	end

	it "is valid with a height" do
		giraffe = Giraffe.new
		expect(giraffe).to be_valid
	end

	it "has a height that can be specified" do
		giraffe = Giraffe.new(height: 12)
		expect(giraffe.height).to eq(12)
	end

	it "is 0 years old when its height is < 6 ft" do
		giraffe = Giraffe.create(height: 5)
		expect(giraffe.guess_age).to eq(0)
	end

	it "is 1 year old when its height is < 10 feet but >=  6 ft" do
		giraffe = Giraffe.create(height: 6)
		expect(giraffe.guess_age).to eq(1)
	end

	it "is 2 years old when its height is < 13 feet but >= 10 ft" do
		giraffe = Giraffe.create(height: 10)
		expect(giraffe.guess_age).to eq(2)
	end

	it "is 3 years old when its height is < 15 feet but >= 13 ft" do
		giraffe = Giraffe.create(height: 13)
		expect(giraffe.guess_age).to eq(3)
	end

	it "is 4 years old when its height is < 16 feet but >= 15 ft" do
		giraffe = Giraffe.create(height: 15)
		expect(giraffe.guess_age).to eq(4)
	end

	it "is 5 years old when its height is < 17 feet but >= 16 ft" do
		giraffe = Giraffe.create(height: 16)
		expect(giraffe.guess_age).to eq(5)
	end

	it "is 6 years old when its height is >= 17 ft" do
		giraffe = Giraffe.create(height: 17)
		expect(giraffe.guess_age).to eq(6)
	end

end

require 'rails_helper'

RSpec.describe Turtle, type: :model do

  it "has a status" do
		turtle = Turtle.create
		expect(turtle).to have_attribute(:status)
	end

	it "is valid with a status" do
		turtle = Turtle.create
		expect(turtle).to be_valid
	end

	it "has a status that can be specified" do
		turtle = Turtle.create(status: true)
		expect(turtle.status).to eq(true)
	end

end

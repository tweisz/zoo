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

end

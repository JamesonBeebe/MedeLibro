require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
	test "that a user must add content to post" do
		status = Status.new
		assert !status.save
		assert !status.errors[:content].empty?
	end

	test "that a comment is at least 2 letters long" do
		status = Status.new
		status.content = "H"
		assert !status.save
		assert !status.errors[:content].empty?
	end
	
	test "that a comment must have a user" do
		status = Status.new
		status.content = "Hello"
		assert !status.save
		assert !status.errors[:user_id].empty?
	end

end

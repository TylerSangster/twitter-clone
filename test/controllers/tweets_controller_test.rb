require 'test_helper'

class TweetsControllerTest < ActionController::TestCase
  test ":create adds a tweet to the database" do
  	assert_difference "Tweet.count" do
  		post :create, {tweet: {userid: 1, content: "Hello"}}
  	end
  end
end

require 'test_helper'

class FlyerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
    
    def setup
        @flyer = Flyer.new(firstname: "Example Flyer", email: "user@example.com", password_digest: "12345" )
    end
    
    test "should be valid" do
       assert @flyer.valid? 
    end
    
    test "firstname should be present" do
       @flyer.firstname = "        "
        assert_not @flyer.valid?
    end
    
end

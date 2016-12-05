require 'test_helper'

class RiderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
    
    def setup
        @rider = Rider.new(firstname: "Example Rider", email: "user@example.com")
    end
    
    test "should be valid" do
       assert @rider.valid? 
    end
    
    test "firstname should be present" do
       @rider.firstname = "        "
        assert_not @rider.valid?
    end
    
    test "content should be present" do
    @rider.content = "   "
    assert_not @micropost.valid?
  end

  
    
end

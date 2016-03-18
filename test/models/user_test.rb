require 'test_helper'

class UserTest < ActiveSupport::TestCase
   
    def setup
       @user = User.new(username: "John", email: "john@example.com")
    end
    
    test "user should be valid" do
        assert @user.valid?
    end
    
    
    test "username should be present" do
        @user.username= " "
        assert_not @user.valid?
    end
end
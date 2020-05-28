require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should return user fullname" do
    ENV['DEFAULT_EMAIL'] = "info@example.com"
    user = User.create(first_name: 'rishabh', last_name: 'matta', email: 'testing@example.com', phone_number: 123456789, message: 'testing')
    assert_equal user.full_name, 'rishabh matta'
  end
end

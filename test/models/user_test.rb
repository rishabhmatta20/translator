require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should return user fullname" do
    ENV['DEFAULT_EMAIL'] = "info@example.com"
    user = User.create(first_name: 'rishabh', last_name: 'matta', email: 'testing@example.com', phone_number: 123456789, message: 'testing')
    assert_equal user.full_name, 'rishabh matta'
  end

  test "should return errors" do
    user = User.create(first_name: 'rishabh', last_name: 'matta', email: nil, phone_number: 123456789, message: 'testing')
    assert_equal user.error_messages, {:email=>["can't be blank"]}
  end
end

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'should successs on new with html request' do
    get root_path
    assert_response :success
  end

  test 'should successs on new with js request' do
    get root_path, xhr: true, params: { locale: 'hi' }
    assert_response :success
  end

  test 'user registers successfully and sends email notification' do
    ENV['DEFAULT_EMAIL'] = "info@example.com"
    post users_path, xhr: true, params: { user: { first_name: 'rishabh', last_name: 'matta', email: 'testing@example.com', phone_number: 123456789, message: 'testing' } }
    assert_response :success
  end

  test 'should not save user when validation fails' do
    post users_path, xhr: true, params: { user: { first_name: 'rishabh', last_name: 'matta', email: nil, phone_number: 123456789, message: 'testing' } }
    assert :false
  end
end

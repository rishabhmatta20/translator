require 'test_helper'

class LocaleTest < ActiveSupport::TestCase
  test "for locale hi" do
    I18n.locale = :hi
    assert_equal I18n.t('form.Tell us your name'), 'हमें अपना नाम बताओ'
  end

  test "for locale en" do
    I18n.locale = :en
    assert_equal I18n.t('form.Tell us your name'), 'Tell us your name'
  end
end

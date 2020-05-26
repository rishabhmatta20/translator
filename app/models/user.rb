class User < ApplicationRecord
  validates :email, presence: true, 'valid_email_2/email': true
  validates :message, presence: true

  def error_messages
    errors.messages
  end
end

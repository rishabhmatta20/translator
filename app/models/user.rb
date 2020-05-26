class User < ApplicationRecord
  validates :email, presence: true, 'valid_email_2/email': true
  validates :message, presence: true
  after_save :send_mail_to_ajackus

  def error_messages
    errors.messages
  end

  def full_name
    first_name + ' ' + last_name
  end

  private

  def send_mail_to_ajackus
    NotifyAjackusMailer.notify(self).deliver_now
  end
end

module UsersHelper
  def error_message_text(error_for, message)
    '-> ' + error_for.to_s + ' ' + message.first
  end
end

class ApplicationController < ActionController::Base
  before_action :set_locale

  #this method is for handling various request types and their response messages
  def respond_with(request_type, *args)
    path = args[0]
    respond_to do |format|
      format.send(request_type) do
        if path.present?
          redirect_to path, "#{args[1]}": args[2]
        end
      end
    end
  end

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.locale
  end
end

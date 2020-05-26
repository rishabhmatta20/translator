class ApplicationController < ActionController::Base
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
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  protected

  def render_action_info(controller, method)
    render text: "#{request.method} #{request.fullpath} => #{controller.class.name}##{method}"
  end

end

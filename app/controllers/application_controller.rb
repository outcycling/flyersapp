class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    
    helper_method :current_flyer
    
    def current_flyer
        @current_flyer ||= Flyer.find(session[:flyer_id])if session[:flyer_id]
    end
    
    def require_flyer
        redirect_to '/' unless current_flyer
    end
    
    
end

class SessionsController < ApplicationController
    
    def new
       
    end
    
    def create
       @flyer=Flyer.find_by_email(params[:session][:email])
        if @flyer && @flyer.authenticate(params[:session][:password])
            session[:flyer_id]=@flyer.id
            redirect_to '/flyers'
        else
            redirect_to 'sign_in'
        end
        
    end
    
    def destroy
       session[:flyer_id] = nil
        redirect_to '/'
    end
    
end

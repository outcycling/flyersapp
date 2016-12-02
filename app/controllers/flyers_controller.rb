class FlyersController < ApplicationController
    
    def index
        flash[:notice] = "Flyer Updated!"
       @flyers = Flyer.all 
    end
    
    def new
       @flyer = Flyer.new 
    end
    
    def show
        @flyer=Flyer.find(params[:id])
    end
    
    
    def edit 
        @flyer=Flyer.find(params[:id])
    end
    
    def update
    @flyer = Flyer.find(params[:id])
        if @flyer.update_attributes(flyer_params)
            
            redirect_to '/flyers'
        else
            render 'edit'
        end
    end
    
    def create
       @flyer = Flyer.new(flyer_params)
        if @flyer.save
            
            redirect_to '/static_pages/thanks'
        else 
            render 'new'
        end
    end
    
    private
    
    def flyer_params
        params.require(:flyer).permit(:firstname, :lastname, :birthdate, :email, :phone, :address, :city, :school, :feet, :inches, :zip, :apt, :shirt, :ridebike, :physical, :actdesc, :whyjoin, :bikeexp, :athexp, :goal, :password_digest)
    end
    
end

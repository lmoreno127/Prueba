class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
   def index
     @users =User.all
     render :json => 
     @users.to_json(:include => [:infoauser]),status: :ok
   end
   
    def new
        @user =User.new
        @user.infoauser=Infoauser.new
    end
    def create
        @user = User.new(user_params)
        if @user.save
          render :json => 
          @user.to_json(:include => [:infoauser]),status: :created
        else
          head :unprocessable_entity
        end
    end
    def show
      @user =User.find(params[:id])
      render :json => 
       @user.to_json(:include => [:infoauser]),status: :ok
    end
    def edit
     @user =User.find(params[:id])
    end
    def update
      @user = User.find(params[:id])
        if @user.update(user_params)   
          render :json => 
           @user.to_json(:include => [:infoauser]),status: :ok
        else 
          head :unprocessable_entity
        end
    end
    def destroy
      @user = User.find(params[:id])
      if @user.destroy
       head :ok
      else
        head :unprocessable_entity
      end
    end
    
  
    
    
    private

    def user_params
        params.require(:user).permit(:nombres,:apellidos,:telefono,:email,:direccion,infoauser_attributes: [:arte,:cine,:musica])
    end

    
end

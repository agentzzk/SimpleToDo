class UsersController < ApplicationController
  
  def new
    @newUser = User.new
  end
  
  def create
    @newUser = User.new(user_params)
    
    if @newUser.save
      flash[:success] = "Account created!"
      session[:user_id] = user.id
      redirect_to tasks_path
      
    else
      render :new
    end
  end
  
  def edit
  
  end
  
  def update
    
  end
  
  private
      
      def user_params
        
        #white-list the parameters
        params.require(:user).permit(:name, :email, :password)
        
      end
  
end
class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    
    if @user.save
      flash[:success] = "Account created!"
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
class UsersController < ApplicationController
  before_action :check_logged_in
  
  def check_logged_in
    redirect_to tasks_path if logged_in?
  end
  
  def new
    @newUser = User.new
  end
  
  def create
    @newUser = User.new(user_params)
    
    if @newUser.save
      flash[:success] = "Account created!"
      redirect_to logout_path
      
    else
      render "new"
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
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
      #create a default task also
      @newTask = @newUser.tasks.create(:title => "Sample Task", :details => "Click edit at the bottom to change this text field.\r\n\r\nCreate an unordered list:\r\n<ul>\r\n<li>Item 1</li>\r\n<li>Item 2</li>\r\n</ul>\r\n\r\nOr a numbered list:\r\n<ol>\r\n<li>Item 1</li>\r\n<li>Item 2</li>\r\n</ol>\r\n\r\nUse HTML tags to further style the text.")
      flash[:success] = "Account created! Please login to use the app."
      redirect_to login_path
      
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
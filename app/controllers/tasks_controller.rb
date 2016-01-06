class TasksController < ApplicationController
  before_action :check_logged_in
  
  def check_logged_in
    redirect_to root_path if !logged_in?
  end
  
  def index
    @tasks = Task.where(:user_id => session[:user_id])
  end
  
  def show
    # Params is an entie HASH passed into the link. We find the ID 
    # component in the HASH to find the according task object/entery in the db.
    @task = Task.find(params[:id])
  end
  
  def new
    @newTask = Task.new();
     # don't use create here as you wanna make sure user hits submit
     # then in the create action below, you would take the information and save it
  end
  
  def create
    @newTask = Task.new(task_params)
    @newTask.user_id = session[:user_id]
    
    if @newTask.save
      flash[:success] = "Task created!"
      redirect_to tasks_path
      
    else
      render :new
    end
  end
  
  def edit
    @editTask = Task.find(params[:id])
  end
  
  def update
    @editTask = Task.find(params[:id])
    
    if @editTask.update(task_params)
      flash[:success] = "Task updated!"
      redirect_to task_path(@editTask)
      
    else
      render :edit
    end
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:danger] = "Task deleted!"
    redirect_to root_path
  end
  
  private
      
      def task_params
        
        #white-list the parameters
        params.require(:task).permit(:title, :details)
        
      end
  
end
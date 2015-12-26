class TasksController < ApplicationController
  
  def index
    @tasks = Task.all
    @userAccount = @tasks.first.user
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
    @newTask.user = User.first
    
    if @newTask.save
      flash[:success] = "Task created!"
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
      
      def task_params
        
        params.require(:task).permit(:title, :details)
        
      end
  
end
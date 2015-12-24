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
    
  end
  
  def edit
    
  end
  
  def update
    
  end
  
end
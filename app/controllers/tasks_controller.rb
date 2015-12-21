class TasksController < ApplicationController
  
  def index
    @tasks = Task.all
    @userAccount = @tasks.first.user
  end
  
  def show
    # Params is an entie HASH passed into the link. We find the ID 
    # component in the HASH to find the according task object/entery in the db.
    @task = Task.find(params[:id]
  end
  
end
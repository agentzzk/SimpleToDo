class PagesController < ApplicationController
  
  def home
    redirect_to tasks_path if logged_in?
  end
  
end
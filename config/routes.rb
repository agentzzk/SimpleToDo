Rails.application.routes.draw do
  
  root 'pages#home'
  get '/home', to: 'pages#home'             #main home/login page
  
  
  # get '/tasks', to: 'tasks#index'           #display all tasks
  # get '/tasks/new', to: 'tasks#new'         #new form to create a new task
  # post '/tasks', to: 'tasks#create'         #handle HTTP request to create a new task
  # get '/tasks/:id/edit', to: 'tasks#edit'   #edit the task
  # patch '/tasks/:id', to: 'tasks#update'    #handle updating records when user edits task
  # get '/tasks/:id', to: 'tasks#show'        #show individial task details
  # delete '/tasks/:id', to: 'tasks#destroy'  #delete
  
  resources :tasks
  
end

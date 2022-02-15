Rails.application.routes.draw do
  # For details on the DSL available within this file, see
  # CRUD = Create Read Update Delete/Destroy
  # Verb "URI", to: "controller_prefex#action"

  # Read all the tasks
  get 'tasks', to: 'tasks#index'
  # Create tasks
  get 'tasks/new', to: 'tasks#new' # The `new` route needs to be *before* `show` route.
  post 'tasks', to: 'tasks#create'
  # Read a single task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Update tasks
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  # Destroy a task
  delete 'tasks/:id', to: 'tasks#destroy'
end

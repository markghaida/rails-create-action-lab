Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/students/', to: 'students#index', as: 'students'
  get '/students/new', to: 'students#new', as: 'new_student'
  post '/students/', to: 'students#create'
  get '/students/:id', to: 'students#show', as: 'student'
end

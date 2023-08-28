Rails.application.routes.draw do 

  resources :colleges
  resources :courses
  resources :users
  resources :addresses

  get '/users_by_course', to: 'users#show_all_users_by_courses'
  get '/users_by_specific_course/:course_name', to: 'users#show_all_users_of_specific_course'
  get '/current_user_course/:id', to: 'users#current_user_course'
  get '/show_colleges_according_to_course', to: 'courses#m1'
end

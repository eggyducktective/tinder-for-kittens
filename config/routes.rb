Rails.application.routes.draw do

  get 'cats/new'
  get 'cats/create'
  get 'cats/show'
  get 'cats/index'
  get 'cats/edit'
  get 'cats/update'
  get 'cats/destroy'
root to: "pages#home"

get "/login" => "session#new" # show the log in form
post "/login" => "session#create" # submit the login and authenticate
delete "/login" => "session#destroy"

resources :users

get "/profile" => "users#profile"
post "/search" => "cats#catsearch"

end

Rails.application.routes.draw do

root to: "pages#home"

get "/login" => "session#new" # show the log in form
post "/login" => "session#create" # submit the login and authenticate
delete "/login" => "session#destroy"

resources :users

get "/profile" => "users#profile"
end

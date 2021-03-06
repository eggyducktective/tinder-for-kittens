Rails.application.routes.draw do


root to: redirect('/welcome.html')
# root to: "pages#home"  # will use page header & footer

get "/login" => "session#new" # show the log in form
post "/login" => "session#create" # submit the login and authenticate
delete "/login" => "session#destroy"


resources :users

get "/profile" => "users#profile"
post "/search" => "cats#catsearch"

post "/cats/:id" => "cats#update_kitty"

delete "/photos/:id" => "photos#destroy"
delete "/comments/:id" => "comments#destroy"



resources :cats
resources :comments
resources :hobbies
resources :photos

end

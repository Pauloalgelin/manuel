Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "manuals#index", as: "home"
  get "about" => "manuals#about", as: "about"


  resources :manuals

end

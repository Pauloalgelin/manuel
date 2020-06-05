Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "manuals#index", as: "home"
  get "about" => "manuals#about", as: "about"
  get "search" => "manuals#search", as: "search"
  get "result" => "manuals#result", as: "result"

  resources :manuals

end

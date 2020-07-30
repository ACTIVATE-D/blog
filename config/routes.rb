Rails.application.routes.draw do
  root "top#index"

  get "about" => "top#about", as: "about"
  get "lesson/:action(/:name)" => "lesson"
  #  get 'top/index'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :members do
    collection { get "search" }
  end
end


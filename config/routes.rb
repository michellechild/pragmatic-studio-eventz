Rails.application.routes.draw do

  resources :categories
  root "events#index"

  get "events/filter/:filter" => "events#index", as: :filtered_events

  resource :session, only: [:new, :create, :destroy]

  resources :events do
    resources :registrations
    resources :likes
  end

  resources :users
  get "signup" => "users#new"
   
end

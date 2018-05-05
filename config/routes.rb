Rails.application.routes.draw do
  devise_for :users
  resources :topics do
    member do
      post :upvote
    end
  end

  root "topics#index"

  resources :votes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

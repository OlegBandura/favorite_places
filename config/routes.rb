Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'places#index'
  resources :places do
    member do
      put 'like', to: 'places#upvote'
      put 'dislike', to: 'places#downvote'
    end
  end

  resources :places, only: %i[new create]
end

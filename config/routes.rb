Rails.application.routes.draw do
  devise_for :users
  root to: "prompts#index"
  resources :users
  resources :prompts do
    resources :chapters
  end

get '/favorites' => 'favorites#index'
  resources :prompts do
    member do
      post 'add_favorite'
      delete 'remove_favorite'
    end
  end
end

Rails.application.routes.draw do
  devise_for :users
  root to: "prompts#index"
  resources :prompts do
    resources :chapters
  end
end

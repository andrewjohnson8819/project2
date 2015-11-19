Rails.application.routes.draw do
  root to: "prompts#index"
  resources :prompts
  resources :chapters
end

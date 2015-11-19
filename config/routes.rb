Rails.application.routes.draw do
  root to: "prompts#index"
  resources :prompts do
    resources :chapters
  end
end

Rails.application.routes.draw do
  resources :communities
  devise_for :users
  resources :events
  root to: "events#index"
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end

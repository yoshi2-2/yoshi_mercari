Rails.application.routes.draw do
  devise_for :users

  root "items#index"
  get "logout" => "users#logout"
end

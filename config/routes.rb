Rails.application.routes.draw do
  devise_for :users

  root "items#index"
  get "logout" => "users#logout"
  get "mypage" => "users#show"
  get "/mypage/profile/:id" => "users#profile"
end

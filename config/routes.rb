Rails.application.routes.draw do
  
  devise_for :users,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
  }

  namespace :admin do
    root to: "homes#top"
    resources :huts, only: [:new, :index, :show, :edit, :update]
    resources :comments, only: [:index, :destroy]
    resources :reviews, only: [:index, :destroy]
    resources :users, only: [:index, :show, :edit, :update]
  end

  scope module: :public do
    root to: "homes#top"
    get "/about"=>"homes#about"
    resources :favorites, only: [:create, :destroy, :index]
    resources :comments, only: [:create, :destroy]
    resources :huts, only: [:index, :show]
    resources :reviews
    resources :users, only: [:show, :edit, :update]
    get "/mypage"=>"users#show"
    get "/information/edit"=>"users#edit"
    patch "/information/edit"=>"users#update"
    get "users/unsubscribe"=>"users#unsubscribe"
    patch "users/withdraw" => "users#withdraw"
  end
end

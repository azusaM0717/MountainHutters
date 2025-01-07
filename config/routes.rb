Rails.application.routes.draw do
  

  namespace :admin do
    get 'huts/index'
    get 'huts/new'
    get 'huts/create'
    get 'huts/show'
    get 'huts/edit'
    get 'huts/update'
  end
  namespace :admin do
    get 'comments/index'
    get 'comments/destroy'
  end
  namespace :admin do
    get 'reviews/index'
    get 'reviews/destroy'
  end
  namespace :admin do
    get 'users/index'
    get 'users/show'
    get 'users/edit'
    get 'users/update'
  end
  namespace :admin do
    get 'homes/top'
  end
  namespace :public do
    get 'favorites/create'
    get 'favorites/destroy'
    get 'favorites/index'
  end
  namespace :public do
    get 'comments/create'
    get 'comments/destroy'
  end
  namespace :public do
    get 'huts/index'
    get 'huts/show'
  end
  namespace :public do
    get 'reviews/new'
    get 'reviews/index'
    get 'reviews/show'
    get 'reviews/create'
    get 'reviews/edit'
    get 'reviews/update'
    get 'reviews/destroy'
  end
  namespace :public do
    get 'users/show'
    get 'users/eedit'
    get 'users/update'
    get 'users/unsubscribe'
    get 'users/withdraw'
  end
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end
  devise_for :users
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

end

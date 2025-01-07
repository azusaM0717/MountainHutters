Rails.application.routes.draw do
  

  devise_for :users
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

end

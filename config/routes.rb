AdminAnnouncement::Engine.routes.draw do
  root "announcements#index"

  resources :announcements do
    member do
      post 'hide'
    end
  end
end

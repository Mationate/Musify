Rails.application.routes.draw do
  resources :playlists do
    resources :songs, only: [:create, :destroy] do
      member do
        patch 'set_favourite', to: 'songs#set_favourite'
      end
    end
  end
  resources :users
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

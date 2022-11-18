Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :movies, only: [:new, :index, :show, :create] do
  end
  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: [:new, :index, :show, :create] do
  end

  resources :bookmarks do
  end
end

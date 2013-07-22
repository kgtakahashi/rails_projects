Asagao::Application.routes.draw do
  root to: "top#index"
  get "about" => "top#about", as: "about"

  get "lesson/:action(/:name)" => "lesson"

  resources :members, only: [:index, :show] do
    collection { get "search" }

    resources :entries, only: [:index]
  end

  resources :articles, only: [:index, :show]

  resource :session, only: [:create, :destroy]

  resource :account, only: [:show, :edit, :update]

  resources :entries do
    member { put "like", "unlike" }
    collection { get "voted" }
  end

  namespace :admin do
    root to: "top#index"
    resources :members do
      collection { get "search" }
    end
    resources :articles
  end

  match "*anything" => "top#not_found"
end

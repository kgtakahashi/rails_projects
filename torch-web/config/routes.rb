TorchWeb::Application.routes.draw do
  root to: "top#index"

  get "top/index"

  resources :menters do
  	member do
    	get 'show_image'
  	end
	end
	resources :users
 #OmniAuth
  match "/auth/:provider/callback" => "sessions#callback"
  match "/logout" => "sessions#destroy", as: :logout
end

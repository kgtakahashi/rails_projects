TorchWeb::Application.routes.draw do
  root to: "top#index"

  resources :menters do
  	member do
    	get 'show_image'
  	end
	end

end

TorchWeb::Application.routes.draw do
  root to: "top#index"

  resources :menters


end

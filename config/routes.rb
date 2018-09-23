Rails.application.routes.draw do
  root "welcome#index"
  get "/say" => "welcome#say"
  get "/sub", to: "subscribe#new"
  resources :subscribe
  get "/success", to: "subscribe#success"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

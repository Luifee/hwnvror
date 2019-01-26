Rails.application.routes.draw do
  root "welcome#index"
  get "/say/", to: "welcome#say"

  get "/posts/", to: "posts#list"
  delete "posts/", to: "posts#delete"
  post "/posts/", to: "posts#create"

  get "/txt/", to: "txt#new"
  get "/txt/success/", to: "txt#success"
  get "/txt/list/", to: "txt#list"
  delete "/txt/destroy_multi/", to: "txt#destroy_multi"
  post "/txt/", to: "txt#create"

  resources :sqls
  get "/sqls/success/", to: "sqls#success"

  get "/bkto/", to: "bkto#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

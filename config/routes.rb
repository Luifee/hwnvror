Rails.application.routes.draw do
  root "welcome#index"
  get "/say", to: "welcome#say"

  get "/posts", to: "posts#list"
  post "/posts/del", to: "posts#delete"
  post "/posts", to: "posts#list"

  get "/txt", to: "txt#new"
  get "/txt/success", to: "txt#success"
  get "/txt/list", to: "txt#list"
  post "/txt/delete", to: "txt#delete"
  post "/txt", to: "txt#create"

  get "/bkto", to: "bkto#index"
  get "/bkto/hi", to: "bkto#hi"
  post "/bkto", to: "bkto#create"
  post "bkto/del", to: "bkto#withdraw"

  resources :sqls
  get "/sqls/success", to: "sqls#success"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

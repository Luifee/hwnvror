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
  post "/bkto/del", to: "bkto#withdraw"

  get "/sqls", to: "sqls#new"
  get "/sqls/success", to: "sqls#success"
  get "/sqls/list", to: "sqls#index"
  get "/sqls/subscribed", to: "sqls#subscribed"
  post "/sqls", to: "sqls#create"
  post "/sqls/delete", to: "sqls#delete"

  get "/site", to: "site#index"
  get "/site/test", to: "site#test"
  get "/site/send_email", to: "site#send_email"

  get "/overall", to: "overall#index"
  get "/overall/new", to: "overall#new"
  get "/overall/hi", to: "overall#hi"
  get "/overall/members", to: "overall#list"
  get "/overall/success", to: "overall#success"
  post "/overall/new", to: "overall#reg"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

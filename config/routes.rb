Rails.application.routes.draw do
  get 'todos/index'
  get "/todos/delete"
  match "todos/add" => "todos#add", :via => :post
end

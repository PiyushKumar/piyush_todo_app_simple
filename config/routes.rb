Rails.application.routes.draw do
  get 'todos/index'
  get "/todos/delete"
  match "todos/add" => "todos#add", :via => :post
  match 'todos/complete' => 'todos#complete', :via => :post
end

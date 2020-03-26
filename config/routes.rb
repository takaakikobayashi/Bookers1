Rails.application.routes.draw do
  get 'home/index'
  get 'books/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "top" => "homes#top"

  post "books" => "booklists#create"

  get "books" => "booklists#index"

  get "books/:id" => "booklists#show", as: "book"

  get "books/:id/edit" => "booklists#edit", as: "edit_book"

  patch "books/:id" => "booklists#update", as: "update_book"

  delete "books/:id" => "booklists#destroy", as: "destroy_book"
  
  root to: "homes#top"

end

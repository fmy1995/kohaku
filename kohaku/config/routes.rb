Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/show'
  get 'posts/new'
  get 'posts/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'homes#top' 
get "home/about" => "homes#about"

  resources :posts do
    resources :post_comments, only: [:create, :destroy]
  end
end

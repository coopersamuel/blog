Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts do 
    resources :comments
    post 'tags/add_tag' => 'posts#add_tag'
    delete 'tags/remove_tag' => 'posts#remove_tag'
  end
  resources :tags
  root "posts#index"
  
end

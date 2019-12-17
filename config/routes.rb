Rails.application.routes.draw do
  get 'posts/show'
  get 'posts/edit'

  get 'categories/show'
  get 'categories/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories, :posts, only: [:index, :show, :new, :create, :edit, :update]
  resources :authors
end

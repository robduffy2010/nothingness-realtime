Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/new'

  get 'posts/create'

  get 'posts/thread'

  get 'posts/:id', to: 'posts#thread'
  
  post 'posts/:id', to: 'posts#thread'

  patch 'posts/:id', to: 'posts#thread'

resources :posts, only: [:new, :create, :index, :destroy, :thread] do
	member do
		post :create_comment
	end
end

root to: 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
	root "post_images#index"
    devise_for :users
    resources :post_images, only:[:new, :create, :index, :show] do
    	resource :post_comments, only: [:create, :destroy]
    	resource :favorites, only: [:create, :destroy]
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

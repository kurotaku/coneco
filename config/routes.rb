Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get 'posts/index'
      get 'posts/show'
      get 'posts/create'
      get 'posts/destroy'
      get 'posts/update'
    end
  end
  get 'index/new'
  get 'index/show'
  get 'index/edit'
  
	namespace 'api', {format: 'json'} do
    namespace 'v1' do
      resources :posts
    end
  end

	root "static_pages#home"

  devise_for :users
  get 'users/show'

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

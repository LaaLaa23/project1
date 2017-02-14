Rails.application.routes.draw do

  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :update, :index]
  get '/users/edit' => 'users#edit'
  post '/users/:id/delete' => 'users#destroy', :as =>'user_delete'
  get '/users/:user_id/posts' => 'posts#user_posts', :as => 'user_posts'

  resources :posts do
    resources :comments, :only => [:new, :create, :show, :index]
    # get '/posts/edit' => 'posts#edit'
    # post '/posts/:id/delete' => 'posts#destroy', :as =>'post_delete'
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end

# what the fridge should this be? -
#
# root :to => 'pages#home'
# resources :users, :only => [:new, :create, :update, :index]
# get '/users/edit' => 'users#edit'
# post '/users/:id/delete' => 'users#destroy', :as =>'user_delete'
#
# resources :posts, :only => [:new, :create, :update, :show, :index]
# get '/posts/edit' => 'posts#edit'
# post '/posts/:id/delete' => 'posts#destroy', :as =>'post_delete'
#
# resources :comments, :only => [:new, :create, :show, :index]
#
# get '/login' => 'session#new'
# post '/login' => 'session#create'
# delete '/login' => 'session#destroy'
#

# can't figure this sh*t out... b*ll*cks
#
#   root :to => 'pages#home'
#   resources :users, :only => [:new, :create, :update, :index] do
#     resources :posts, :only => [:new, :create, :update, :show, :index] do
#       resources :comments, :only => [:new, :create, :show, :index]
#     end
#   end
#   get '/users/edit' => 'users#edit'
#   post '/users/:id/delete' => 'users#destroy', :as =>'user_delete'
#   get '/posts/edit' => 'posts#edit'
#   post '/posts/:id/delete' => 'posts#destroy', :as =>'post_delete'
#
#   get '/login' => 'session#new'
#   post '/login' => 'session#create'
#   delete '/login' => 'session#destroy'
#

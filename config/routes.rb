Rails.application.routes.draw do
  #resources :orders
  #resources :customers

  resources :customers do
    resources :orders
  end

  resources :posts do
     resources :comments
   end

  resources :pages
end

=begin
Manual setup routes & 7 conventional routes :
  get '/pages', to: 'pages#index'
  post '/pages', to: 'pages#create'
  get '/pages/new', to: 'pages#new', as: 'new_page'
  get '/pages/:id', to: 'pages#show', as: 'page'
  get '/pages/:id/edit', to: 'pages#edit', as: 'edit_page'
  patch '/pages/:id', to: 'pages#update'
  delete 'pages/:id', to: 'pages#destroy'

  *shortcut above
=end

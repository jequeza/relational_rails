Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
  get '/novels', to: 'novels#index'
  get '/libraries', to: 'libraries#index'
  get '/novels/new', to: 'novels#new'
  get '/libraries/new', to: 'libraries#new'

  post '/libraries', to: 'libraries#create'
  post '/novels', to: 'novels#create'

  get '/libraries/:id', to: 'libraries#show'
  get '/novels/:id', to: 'novels#show'

  get '/libraries/:id/edit', to: 'libraries#edit'
end

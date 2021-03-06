Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'

  get '/libraries', to: 'libraries#index'
  get '/libraries/new', to: 'libraries#new'
  post '/libraries', to: 'libraries#create'
  get '/libraries/:id', to: 'libraries#show'
  get '/libraries/:id/edit', to: 'libraries#edit', as: 'library_edit'
  patch '/libraries/:id', to: 'libraries#update'
  delete '/libraries/:id', to: 'libraries#destroy', as: 'library'
  get '/libraries/:id/books', to: 'books#index', as: 'library_books'


  get '/novels', to: 'novels#index'
  get '/novels/new', to: 'novels#new'
  post '/novels', to: 'novels#create'
  get '/novels/:id', to: 'novels#show'
  get '/novels/:id/edit', to: 'novels#edit', as: 'novel_edit'
  patch '/novels/:id', to: 'novels#update'
  delete '/novels/:id', to: 'novels#destroy', as: 'novel'
  get '/novels/:id/characters', to: 'characters#index', as: 'novel_characters'

  get '/books', to: 'books#index'
  get '/libraries/:id/books/new', to: 'books#new'
  post '/libraries/:id/books', to: 'books#create'
  get '/books/:id', to: 'books#show'
  get '/books/:id/edit', to: 'books#edit'
  patch '/books/:id', to: 'books#update'
  delete '/books/:id', to: 'books#destroy', as: 'book'


  get '/characters', to: 'characters#index'
  get '/novels/:id/characters/new', to: 'characters#new'
  post '/novels/:id/characters', to: 'characters#create'
  get '/characters/:id', to: 'characters#show'
  get '/characters/:id/edit', to: 'characters#edit'
  patch '/characters/:id', to: 'characters#update'
  delete '/characters/:id', to: 'characters#destroy', as: 'character'

end

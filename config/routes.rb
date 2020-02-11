Rails.application.routes.draw do
  get     '/new_article', to: 'articles#new'
  post    '/new_article', to: 'articles#create'
  get     '/signup',      to: 'users#new'
  post    '/signup',      to: 'users#create'
  get     '/signin',      to: 'sessions#new'
  post    '/signin',      to: 'sessions#create'
  delete  '/signout',     to: 'sessions#destroy'
  root to: 'pages#homepage'
end

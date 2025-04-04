Rails.application.routes.draw do
  devise_for :users
  post    '/comment',       to: 'comments#create'
  post    '/vote',          to: 'votes#create'
  delete  '/unvote',        to: 'votes#destroy'
  get     '/read_article',  to: 'articles#show'
  post    '/read_article',  to: 'articles#show'
  get     '/articles',      to: 'articles#index'
  post    '/articles',      to: 'articles#index'
  get     '/new_article',   to: 'articles#new'
  post    '/new_article',   to: 'articles#create'
  get     '/signup',        to: 'users#new'
  post    '/signup',        to: 'users#create'
  get     '/signin',        to: 'sessions#new'
  post    '/signin',        to: 'sessions#create'
  delete  '/signout',       to: 'sessions#destroy'
  root to: 'pages#homepage'
end

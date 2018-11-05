Rails.application.routes.draw do

  
  resources :posts, only: [:index, :create, :edit, :show, :update, :destroy]
  resources :pictures
  resources :travel_destinations

  get '/posts/new/:travel_event_id', to: 'posts#new', as: 'new_post'
  get '/travel_events/:id/inviation', to: 'travel_events#new_invitations', as: 'new_invitations'
  post '/travel_events/:id/inviation', to: 'travel_events#create_invitations', as: 'create_invitations'
  get '/travel_events/inviations', to: 'travel_events#invitations', as: 'invitations'
  get '/travel_events/join/:id', to: 'travel_events#join', as: 'join'
  post '/travel_events/join/:id', to: 'travel_events#join_event', as: 'join_event'
  post '/travel_events/add_review/:id', to: 'travel_events#add_review', as: 'add_review'
  get '/home', to: 'travel_events#index', as: 'home'
  get '/travel_events/past_events', to: 'travel_events#past_events', as: 'past_events'
  get '/users', to: 'users#index', as: 'users'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  get '/users/:id', to: 'users#show', as: 'user'
  patch '/users/:id', to: 'users#update'
  put '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  get '/reviews/new/:travel_event_id', to: 'reviews#new', as: 'new_review'
  get '/reviews', to: 'reviews#index', as: 'reviews'
  post '/reviews', to: 'reviews#create'
  get '/reviews/:id', to: 'reviews#show', as: 'review'
  get '/reviews/:id/edit', to: 'reviews#edit', as: 'edit_review'
  patch '/reviews/:id', to: 'reviews#update'
  put '/reviews/:id', to: 'reviews#update'
  delete '/reviews/:id', to: 'reviews#destroy'


  devise_for :admins, controllers: { registrations: "devise_override/registrations", omniauth_callbacks: "devise_override/omniauth_callbacks"}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :travel_events do
    resources :travel_places
  end
  root to: "travel_events#index"

  end

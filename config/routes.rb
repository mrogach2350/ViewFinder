Rails.application.routes.draw do

	get '/', to: 'photos#index', as: 'photos'

	resources :landmarks, only: [:index, :show] do 
		resources :photos, except: [:edit]
	end

	get '/users/:id', to: 'users#show', as: 'user'
	post '/users', to: 'users#create'
	# delete '/users/:id', to: 'users#destroy'

	patch '/users/:id', to: 'users#update'
	get '/users/:id/delete', to: 'users#destroy'

	post '/sessions', to: 'sessions#create'
	get '/logout', to: 'sessions#destroy'
	
end

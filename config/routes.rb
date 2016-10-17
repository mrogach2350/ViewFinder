Rails.application.routes.draw do

	get '/', to: 'photos#index', as: 'photos'

	resources :landmarks, only: [:index, :show] do 
		resources :photos, except: [:edit]
	end

 
 	# take out later
	get '/users/new', to: 'users#new', as: 'new_user'
	get '/users/:id', to: 'users#show', as: 'user'


	post '/users', to: 'users#create'
	#take out later
	get '/users/:id/edit', to: 'users#edit'

	patch '/users/:id', to: 'users#update'
	delete '/users/:id', to: 'users#destroy'


	# get '/landmarks', to: 'landmarks#index', as: 'map'
	# get '/landmarks/:id', to: 'landmarks#show', as: 'landmark'

	# get '/photos/:id', to:'photos#show', as: 'photo'

	# take out later
	# get '/photos/new', to: 'photos#new'
	# post '/photos', to: 'photos#create'
	# patch '/photos/:id', to: 'photos#update'
	# delete '/photos/:id', to: 'photos#destroy'

	get '/login', to: 'sessions#new'
	post '/sessions', to: 'sessions#create'
	get '/logout', to: 'sessions#destroy'
	


end

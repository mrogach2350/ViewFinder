Rails.application.routes.draw do


 	get '/', to: 'photos#index'

 	# take out later
	get '/users/new', to: 'users#new', as: 'new_user'
	get '/users/:id', to: 'users#show', as: 'user'


	post '/users', to: 'users#create'
	#take out later
	get '/users/:id/edit', to: 'users#edit'

	patch '/users/:id', to: 'users#update'
	delete '/users/:id/delete', to: 'users#destroy'


	get '/landmarks', to: 'landmarks#index', as: 'map'
	get '/landmarks/:id', to: 'landmarks#show', as: 'landmark'

	get '/photos/:id', to:'photos#show', as: 'photo'
	post '/photos', to: 'photos#create'
	patch '/photos/:id/edit', to: 'photos#update'
	delete '/photos/:id/delete', to: 'photos#destroy'

end

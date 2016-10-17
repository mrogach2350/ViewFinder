Rails.application.routes.draw do

 	get '/', to: 'photos#index', as: 'photos'

	get '/users/:id', to: 'users#show', as: 'user'


	post '/users', to: 'users#create'

	patch '/users/:id', to: 'users#update'
	delete '/users/:id', to: 'users#destroy'

	get '/landmarks', to: 'landmarks#index', as: 'map'
	get '/landmarks/:id', to: 'landmarks#show', as: 'landmark'

	get '/photos/:id', to:'photos#show', as: 'photo'
	post '/photos', to: 'photos#create'
	patch '/photos/:id/edit', to: 'photos#update'
	delete '/photos/:id/delete', to: 'photos#destroy'

	get '/logout', to: 'sessions#destroy'
	post '/sessions', to: 'sessions#create'

end

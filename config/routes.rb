Rails.application.routes.draw do
 
	get '/', to: 'photos#index'
	get '/photos:id', to:'photos#show', as: 'photo'
	post '/photos', to: 'photos#create'
	patch '/photos/:id/edit', to: 'photos#update'
	delete '/photos/:id/delete', to: 'photos#destroy'

	get '/landmarks', to: 'landmarks#index', as: 'map'
	get '/landmarks/:id', to: 'landmarks#show', as: 'landmark'

end

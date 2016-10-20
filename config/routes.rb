Rails.application.routes.draw do

	root "landmarks#index"
	post '/upload', to: 'uploads#upload', as: 'uploads'
	resources :landmarks, only: [:index, :show, :delete] do
		resources :photos, except: [:edit] do
			member { post :vote }
		end
	end





	get '/users/:id', to: 'users#show', as: 'user'
	post '/users', to: 'users#create'
	# delete '/users/:id', to: 'users#destroy'

	patch '/users/:id', to: 'users#update'
	get '/users/:id/delete', to: 'users#destroy'

	post '/sessions', to: 'sessions#create'
	get '/logout', to: 'sessions#destroy'

	post '/comments', to: 'comments#create'

	get '/about', to: 'users#index', as: 'about'

	get '/rules', to: 'sessions#index', as: 'rules'
end

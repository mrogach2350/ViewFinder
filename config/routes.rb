Rails.application.routes.draw do
 
	get '/', to: 'photos#index'

	get '/landmarks', to: 'landmarks#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'recipes#index'

	resources :recipes

	namespace :api do
		namespace :v1 do
			resources :recipes, only: [:index]
		end
	end
end

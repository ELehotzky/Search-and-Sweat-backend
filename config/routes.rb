Rails.application.routes.draw do

	namespace :api do
		namespace :v1 do 
			resources :fitness_classes
			resources :admins, only: [:create]
				post "/login", to: "auth#create"
				get "/profile", to: "admins#profile"
				get "/form", to: "admins#form"
			resources :studios
			resources :fitness_class_details
		end
	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

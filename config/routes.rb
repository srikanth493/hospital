Rails.application.routes.draw do
resources :medicines
resources :appointments do
	member do
		get 'new' , as: "book"
	end
end

resources :physicians

resources :bills , only: [:new, :create, :show, :index] do
	member do
		get 'new' , as: "new_patient_bill"
		get 'index', as: "index_bill"
	end
end


resources :patients

root 'physicians#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

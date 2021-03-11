Rails.application.routes.draw do

	
	  #get 'home/index'
	  get 'home/financial'
	  get 'home/socioeconomic'
	  get 'home/business_inside'
	  devise_for :users
	  root 'home#index'
	  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #mount RailsAdmin::Engine => '/', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  namespace :weekdays do
    resources :mondays
    resources :tuesdays
    resources :wednesdays
    resources :thursdays
    resources :fridays
    resources :saturdays
    resources :sundays
    resources :orders
  end

  resources :regusers
  
 	devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'home#index'
end

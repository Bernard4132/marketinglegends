Rails.application.routes.draw do
  resources :reaches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#home" 
  match '/home' , to: 'static_pages#home', via: 'get'
  match '/aboutus' , to: 'static_pages#aboutus', via: 'get'
end

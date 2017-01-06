Rails.application.routes.draw do
  devise_for :user, :controllers => { registrations: 'registrations' }
  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  authenticated :user do
    root to: 'edufyt#index', as: 'home'
   end
  unauthenticated :user do
    root 'edufyt#front'
  end
end

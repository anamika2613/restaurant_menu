Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :dishes do 
    member do 
       get :list_dishes
    end 
 end
end

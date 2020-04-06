Rails.application.routes.draw do
  resources :store_lists do
    resources :employees do
      member do
        patch :complete
      end
    end
 end

  root "store_lists#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

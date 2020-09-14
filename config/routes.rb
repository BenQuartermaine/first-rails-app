Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'people#index'
  resources :people do 
      #/people/
    collection do
      get :above
      get :below
    end

    member do
      get :review
    end
  end
end

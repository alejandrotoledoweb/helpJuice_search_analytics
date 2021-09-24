Rails.application.routes.draw do
  resources :searches
  namespace :form_validations do
    resources :searches, only: %i[create update]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

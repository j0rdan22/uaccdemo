Rails.application.routes.draw do
  resources :party_matters
  resources :party_accounts
  resources :parties
  resources :party_types
  resources :accounts
  resources :matters
  resources :updates
  resources :account_statuses
  resources :matter_updates
  resources :urgency_levels
  resources :resolution_codes
  resources :matter_sources
  resources :matter_statuses
  resources :matter_types
  resources :matter_category_codes
  resources :category_codes
  resources :matter_categories
  resources :user_employees
  resources :employee_departments
  resources :employees
  resources :departments
  resources :locations
  resources :states
  resources :employee_types
  resources :employee_statuses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

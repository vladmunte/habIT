Rails.application.routes.draw do
  resources :users
  resources :habits do
    get 'sport_habits_days', on: :collection
    get 'lifestyle_habits_days', on: :collection
    get 'financial_habits_days', on: :collection
    get 'social_habits_days', on: :collection
    get 'culture_habits_days', on: :collection
  end
  resources :quotes
end

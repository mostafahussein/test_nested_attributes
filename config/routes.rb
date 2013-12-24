TestNestedAttributes::Application.routes.draw do
  root 'recipes#index'
  resources :recipes
end

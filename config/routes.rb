Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  
  resources :users do
    resource :profile
  end
  
  resources :contacts
  get '/about' => 'pages#about'
  root 'pages#home'
  get '/introduction' => 'pages#introduction'
  get '/week_one' => 'pages#week_one'
  get '/week_two' => 'pages#week_two'
  get '/week_three' => 'pages#week_three'
  get '/week_four' => 'pages#week_four'
  get '/week_five' => 'pages#week_five'
  get '/week_six' => 'pages#week_six'
  get '/week_seven' => 'pages#week_seven'
  get '/week_eight' => 'pages#week_eight'
  get '/mbsrManual' => 'pages#mbsrManual'
  get '/gettingStarted' => 'pages#gettingStarted'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

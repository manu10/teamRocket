Rails.application.routes.draw do
  resources :answers
  get 'answers/new'

  get 'answers/create'

  get 'answers/destroy'

  resources :categories
  resources :contacts
  
  get 'contacts/new'

  get 'contacts/create'

  resources :oferts
  get 'oferts/index'

  get 'oferts/show'

  get 'oferts/new'

  get 'oferts/edit'

  get 'oferts/create'

  get 'oferts/update'

  get 'oferts/destroy'

resources :credit_cards
  get 'credit_cards/new'

  get 'credit_cards/create'

  get 'credit_cards/set_credit_card'

  devise_for :users, :controllers => { :registrations => "users/registrations" }
  
  get 'user/show'
  resources :comments

  get 'comments/index' 

  get 'comments/show' => 'comments#show'

  get 'comments/new' => 'comments#new'

  get 'comments/edit' => 'comments#edit'

  get 'comments/get' => 'comments#get'

  get 'comments/create' => 'comments#create'

  get 'comments/update' => 'comments#update'

  get 'comments/destroy' => 'comments#destroy'
  
  get 'ayuda' => 'static_pages#ayuda' 

  resources :user
  get 'user/show' => 'user#show_sale'

  
 
  resources :productos do
    resources :oferts
    resources :comments do
      resources :answers
    end
  end

post 'oferts/:id' => 'oferts#select_winner'
get 'productos/search' => 'productos#search'
post 'productos/:id' => 'productos#indexOferts'
  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'productos#index'


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

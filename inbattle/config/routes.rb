Rails.application.routes.draw do


  resources :contacts
  get 'sessions/new'

  root             'paginas#home'
  get 'alistamento'    => 'paginas#alistamento'
  get 'heroisdeguerra'   => 'paginas#heroisdeguerra'
  get 'sos' => 'contacts#new'
  get 'signup'  => 'sessions#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  get 'voto1' => 'voto#vototema1'  
  get 'voto2' => 'voto#vototema2'  
  get 'voto3' => 'voto#vototema3'
  get 'soma1' => 'candidatos#soma1'
  get 'soma2' => 'candidatos#soma2'
  delete 'logout'  => 'sessions#destroy'
 get 'trocar_os_temas' => 'temas#trocar_os_temas'
 get 'iniciais' => 'microposts#iniciais'



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
#  root 'paginas#home'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  resources :microposts
  resources :users 
  resources :sessions, only: [:new, :create, :destroy]
  resources :temas
  resources :candidatos


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

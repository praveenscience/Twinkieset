Rails.application.routes.draw do
  root  'static_pages#public_index'

  get '/admin' => 'static_pages#root'
  # get 'album' => 'albumsessions#login'

  # resources :album_sessions, only: [:new, :create, :destroy]
  # get 'user_album' => ':user_id/albums'


  resources :users, only: [:new, :create, :show] do
    # resources :albums, only: [:index]

  end
  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: { format: :json } do
    # resources :public_albums, only: [:index, :show]
    get '/:user_id/albums', to: 'public_albums#index', as: "user_albums"
    resources :albums, except: [:new, :edit]
    resources :subalbums, only: [:create, :update, :destroy, :show]
    resources :photos, only: [:create, :update, :destroy]
  end


  get '/:user_id/albums', to: 'albums#index', as: "user_albums"
  get '/:user_id/albums/:id', to: 'albums#show', as: "user_album"
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

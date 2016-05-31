Rails.application.routes.draw do
  resources :usernames
  resources :programs
  resources :admins
  resources :view_settings
  resources :mentors
  resources :news
  get 'news/add'

  get 'members/EditPassword'

  get 'members/EditEmail'

  get 'members/EditApi'

  get 'news/_latest_posts'

  get 'news/index'

  get 'character/index'

  get 'doctrine/index'
  get 'sidebars/_corporation_sidebar'
  get 'sidebars/_doctrine_sidebar'
  get 'doctrine/shieldfleet'
  get 'doctrine/armorfleet_ships'
  get 'doctrine/shieldfleet_ships'
  get 'doctrine/armorfleet_tactics'
  get 'doctrine/armorfleet_minimums'
  get 'doctrine/shieldfleet_ships'
  get 'doctrine/shieldfleet_minimums'
  get 'doctrine/armorfleet'
  get 'doctrine/shieldfleet_tactics'
  get 'corporation/programs'
  get 'doctrine/fleetdoctrine'
  get 'members/console'
  get 'sidebars/_console_cluster'
  devise_for :users, :controllers => { registrations: 'registrations' }
  mount Thredded::Engine => '/forum'


  #MY LINKS
  get '/home', to: 'home#index', as: 'home'
  get '/about', to: 'home#about', as: 'about'
  get '/recruitment', to: 'home#recruitment', as: 'recruitment'
  get '/corporation', to: 'corporation#overview', as: 'corporation'
  get '/console', to: 'members#console', as: 'console'
  get '/fleetdoctrine', to: 'corporation#fleetdoctrine', as: "fleetdoctrine"
  get 'corporation/overview', to: 'corporation#overview', as: 'overview'



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home#index'

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

Mapr::Application.routes.draw do

#  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
#
#

  # devise
  devise_for :users,
             :controllers => { :registrations => "users/registrations",
                               :confirmations => "users/confirmations",
                               :sessions      => 'devise/sessions'      },
             :skip => [:sessions] do
    get    '/admin/login'   => 'devise/sessions#new',       :as => :new_user_session
    post   '/admin/login'   => 'devise/sessions#create',    :as => :user_session
    # only important for testing: get/delete ... read on(or google): rspec and get/delete combined with devise 
    #delete '/admin/logout'  => 'devise/sessions#destroy',   :as => :destroy_user_session
    get    '/admin/logout'  => 'devise/sessions#destroy',   :as => :destroy_user_session
    #get    '/signup'        => 'devise/registrations#new',  :as => :new_user_registration
  end
  # end devise

  resources :link1s
  resources :categories
  resources :contacts

  #match '/' => "contacts#map"
  root :to => "contacts#map"
  match '/search' => "contacts#searchDate"
  match '/admin' => "admins#index"
  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

Rails.application.routes.draw do
  # Routes for the Race resource:

  root "states#index"
  # CREATE
  get "/races/new", :controller => "races", :action => "new"
  post "/create_race", :controller => "races", :action => "create"

  # READ
  get "/races", :controller => "races", :action => "index"
  get "/races/:id", :controller => "races", :action => "show"

  # UPDATE
  get "/races/:id/edit", :controller => "races", :action => "edit"
  post "/update_race/:id", :controller => "races", :action => "update"

  # DELETE
  get "/delete_race/:id", :controller => "races", :action => "destroy"
  #------------------------------

  # Routes for the Race_result resource:
  # CREATE
  get "/race_results/new", :controller => "race_results", :action => "new"
  post "/create_race_result", :controller => "race_results", :action => "create"

  # READ
  get "/race_results", :controller => "race_results", :action => "index"
  get "/race_results/:id", :controller => "race_results", :action => "show"

  # UPDATE
  get "/race_results/:id/edit", :controller => "race_results", :action => "edit"
  post "/update_race_result/:id", :controller => "race_results", :action => "update"

  # DELETE
  get "/delete_race_result/:id", :controller => "race_results", :action => "destroy"
  #------------------------------

  # Routes for the Runner resource:
  # CREATE
  get "/runners/new", :controller => "runners", :action => "new"
  post "/create_runner", :controller => "runners", :action => "create"

  # READ
  get "/runners", :controller => "runners", :action => "index"
  get "/runners/:id", :controller => "runners", :action => "show"

  # UPDATE
  get "/runners/:id/edit", :controller => "runners", :action => "edit"
  post "/update_runner/:id", :controller => "runners", :action => "update"

  # DELETE
  get "/delete_runner/:id", :controller => "runners", :action => "destroy"
  #------------------------------

  # Routes for the State resource:
  # CREATE
  get "/states/new", :controller => "states", :action => "new"
  post "/create_state", :controller => "states", :action => "create"

  # READ
  get "/states", :controller => "states", :action => "index"
  get "/states/:id", :controller => "states", :action => "show"

  # UPDATE
  get "/states/:id/edit", :controller => "states", :action => "edit"
  post "/update_state/:id", :controller => "states", :action => "update"

  # DELETE
  get "/delete_state/:id", :controller => "states", :action => "destroy"
  #------------------------------

  # Routes for the Photo resource:
  # CREATE
  get "/photos/new", :controller => "photos", :action => "new"
  post "/create_photo", :controller => "photos", :action => "create"

  # READ
  get "/photos", :controller => "photos", :action => "index"
  get "/photos/:id", :controller => "photos", :action => "show"

  # UPDATE
  get "/photos/:id/edit", :controller => "photos", :action => "edit"
  post "/update_photo/:id", :controller => "photos", :action => "update"

  # DELETE
  get "/delete_photo/:id", :controller => "photos", :action => "destroy"
  #------------------------------

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

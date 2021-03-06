HindaviEmployee::Application.routes.draw do

  get "personal_infos/index"

  #get "user/index"

  #get "appraisal/index"

  devise_for :users, controllers: { registrations: 'registrations' }, :path => "users"

  get "home/index"

  get "home/admin_index"
  
  get "home/user_list"

  get "home/status"

  get "home/qrcode"

  get "home/list_appraisal"
  
  resources :leaves

  get "home/user_punch_in"

  get "home/user_punch_out"

  match '/leave_requests/users' => "leave_requests#users"

  get "home/monthly_timesheet"

  get "home/monthly_time_detail"

  get "home/newuser_sign_up"

  post "home/create_user"

  get "home/employee_form_info"

  resources :leaves

  resources :messages

  resources :salary_details

  resources :tasks

  resources :appraisals

  resources :events

  resources :leave_requests

  resources :leave_types

  resources :salaries

  resources :users

  resources :personal_infos

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
   root :to => "home#index"
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

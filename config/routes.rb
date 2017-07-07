Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  
  get 'home/index'

  get 'category1' => 'home#category1'

  get 'category2' => 'home#category2'
  
  get 'category3' => 'home#category3'
  
  get 'category4' => 'home#category4'
  
  get 'category5' => 'home#category5'
  
  get 'category6' => 'home#category6'
  
  get 'category7' => 'home#category7'
  
  get 'category8' => 'home#category8'

  get '/show/:id'  => 'home#show'
  get '/:m_id/show/:id' => 'home#show'

  #글 작성
  get 'home/post_write' 
  post '/write' => 'home#write'
  get 'home/destroy/:id' => 'home#destroy'
  get 'home/edit/:id' => 'home#edit'
  
  get '/edit/:id' => 'home#edit'
  post '/update/:id' => 'home#update_post'
  
  # post 'home/update/:id' => 'home#update'
  get 'home/show/:id' => 'home#show'
  
  #좋아요
  get '/:id/like' => 'home#like'
  get '/:id/like/:l_id' => 'home#like'
  
  
  #댓글
  post '/:id/comment_create' => 'home#comment_create'
  
  get '/:id/comment_update/:c_id' => 'home#comment_update'
  post '/:id/comment_update/:c_id' => 'home#comment_update_post'
  
  get '/:id/comment_destroy/:c_id' => 'home#comment_destroy'
  
  
  
  #post 'post/:p_id/like' => 'home#like'

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

# == Route Map
#
#           Prefix Verb   URI Pattern                      Controller#Action
#            items GET    /items(.:format)                 items#index
#                  POST   /items(.:format)                 items#create
#         new_item GET    /items/new(.:format)             items#new
#        edit_item GET    /items/:id/edit(.:format)        items#edit
#             item GET    /items/:id(.:format)             items#show
#                  PATCH  /items/:id(.:format)             items#update
#                  PUT    /items/:id(.:format)             items#update
#                  DELETE /items/:id(.:format)             items#destroy
#     sales_orders GET    /sales_orders(.:format)          sales_orders#index
#                  POST   /sales_orders(.:format)          sales_orders#create
#  new_sales_order GET    /sales_orders/new(.:format)      sales_orders#new
# edit_sales_order GET    /sales_orders/:id/edit(.:format) sales_orders#edit
#      sales_order GET    /sales_orders/:id(.:format)      sales_orders#show
#                  PATCH  /sales_orders/:id(.:format)      sales_orders#update
#                  PUT    /sales_orders/:id(.:format)      sales_orders#update
#                  DELETE /sales_orders/:id(.:format)      sales_orders#destroy
#             root GET    /                                pages#home
# 

Rails.application.routes.draw do


  resources :items, :only => [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :sales_orders, :only => [:index, :show, :new, :create, :edit, :update, :destroy]

  root :to => "pages#home"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end

BuildingEpicodus::Application.routes.draw do
  match('/lessons', {:via => :get, :to => 'lessons#index'})
  match('/lessons', {:via => :get, :to => 'lessons#new'})
  match('/lessons', {:via => :post, :to => 'lessons#create'})
  match('/lessons/:name', {:via => :get, :to => 'lessons#show'})
  match('/lessons/:name', {:via => [:patch, :put], :to => 'lessons#update'})
  match('/lessons/:name', {:via => :delete, :to => 'lessons#destroy'})
end

BuildingEpicodus::Application.routes.draw do
  match('/lessons', {:via => :get, :to => 'lessons#index'})
  match('/lessons', {:via => :get, :to => 'lessons#new'})
  match('/lessons', {:via => :post, :to => 'lessons#create'})
  match('/lessons/:slug', {:via => :get, :to => 'lessons#show'})
  match('/lessons/:slug', {:via => [:patch, :put], :to => 'lessons#update'})
  match('/lessons/:slug', {:via => :delete, :to => 'lessons#destroy'})

  match('/sections', {:via => :get, :to => 'sections#index'})
  match('/sections', {:via => :get, :to => 'sections#new'})
  match('/sections', {:via => :post, :to => 'sections#create'})
  match('/sections/:slug', {:via => :get, :to => 'sections#show'})
  match('/sections/:slug', {:via => [:patch, :put], :to => 'sections#update'})
  match('/sections/:slug', {:via => :delete, :to => 'sections#destroy'})
end

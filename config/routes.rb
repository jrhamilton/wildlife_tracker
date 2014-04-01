WildlifeTracker::Application.routes.draw do
  match('species', {:via => :get, :to => 'species#index'})
  match('regions', {:via => :get, :to => 'regions#index'})
  match('sightings', {:via => :get, :to => 'sightings#index'})
  match('sightings', {:via => :post, :to => 'sightings#insert_sighting'})
  match('/', {:via => :get, :to => 'main#index'})
end

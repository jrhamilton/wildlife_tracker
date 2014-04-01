class SightingsController < ApplicationController
  def index
    @sightings = Sighting.all
    render('/sightings/index.html.erb')
  end

  def insert_sighting
    region = Region.where({:name => params[:region]}).first
    if region == nil
      region = Region.create({:name => params[:region]})
    end
    species = Species.where({:name => params[:species]}).first
    if species == nil
      species = Species.create({:name => params[:species]})
    end
    Sighting.create(:species_id => species.id, :region_id => region.id, :time => params[:time]})
    render('/sightings/')
    end
  end
end

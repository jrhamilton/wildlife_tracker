class RegionsController < ApplicationController
  def index
    @regions = Region.all
    #@sightings = Sighting.all
    render('/regions/index.html.erb')
  end
end

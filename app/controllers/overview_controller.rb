class OverviewController < ApplicationController
  def home
  end

  def showcase
  	@artists = Artist.all
  	@artworks = Artwork.all
  end
end

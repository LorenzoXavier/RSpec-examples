class PagesController < ApplicationController
  def index
    @tiles = Tile.all
  end
end

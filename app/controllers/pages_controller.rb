class PagesController < ApplicationController
  def index
    @tiles = Tile.all.order("created_at ASC")
  end
end

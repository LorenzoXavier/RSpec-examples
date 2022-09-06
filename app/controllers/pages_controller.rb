# frozen_string_literal: true
class PagesController < ApplicationController
  def index
    @tiles = Tile.all.order('created_at ASC')
  end
end

# lets try and simulate an issue with a line being far too long sfsdfsdfasdfgdsgfsdfgdsafgsadfgsdfgsdfgsdfgjhbdvkbda vlkjdfv akdjhfb kjahd vkjhdbv kjhdbvfkjhbdk jfvhb dkfjvg kdjfhvb kjbfv kjsbd fkvjhbs dkjfvhb kjshdbfv kjhsdbf vkjhbsdkfvjhbsd kjfhvbkjshdfbv kjhs bdfkvjhbsd kjfhvb kjsdhfbv kjhsdfbv kjhsdbfv kjhsdbfv kjhsdbkfvj hbsdkjfhvb ksjdhfbv kjshb fv

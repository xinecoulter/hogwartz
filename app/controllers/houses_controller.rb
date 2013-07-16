class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.where(:name => params[:house]).first
  end

end
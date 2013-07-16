class SpellsController < ApplicationController
  def show
    @spell = Spell.find(params[:id])
  end

  def new
  end

  def create
    @spell = Spell.new(params[:name])
    if @spell.save
      redirect_to @spell
    else
      render :new
    end
  end
end
class SpellsController < ApplicationController
  def show
    @spell = Spell.find(params[:id])
  end

  def new
    @spell = Spell.new
  end

  def edit
    @spell = Spell.find(params[:id])
  end

  def create
    @spell = Spell.new(params[:name])
    if @spell.save
      redirect_to @spell
    else
      render :new
    end
  end

  def update
    @spell = Spell.find(params[:id])
  end

end
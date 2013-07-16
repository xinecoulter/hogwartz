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
    # Old way
    # @spell = Spell.new(name: params[:name])
    # New way
    @spell = Spell.new(params[:spell])

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
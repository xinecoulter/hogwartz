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
    binding.pry
    @spell = Spell.new(params[:spell])

    if @spell.save
      redirect_to @spell
    else
      render :new
    end
  end

  def update
    binding.pry
    @spell = Spell.find(params[:id])
  end

end
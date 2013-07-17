class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    # Old way
    # Student.new(name: params[:name])
    @student = Student.new(params[:student])
    if @student.save
      redirect_to @student
    else
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    # To call an error I can just write raise
    @student.update_attributes(params[:student])
    redirect_to @student
  end

  def search
    @students = Student.where(name: params[:query])
  end
end
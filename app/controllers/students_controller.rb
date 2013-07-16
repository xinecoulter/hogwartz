class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update_attributes(name: params[:name])
    redirect_to @student
  end

  def search
    @students = Student.where(name: params[:query])
  end
end
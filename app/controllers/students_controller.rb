class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.new(params[:student])
    student.save
    redirect_to @student
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    raise
    @student.update_attributes(params[:student])
    redirect_to @student
  end

  def search
    @students = Student.where(name: params[:query])
  end
end
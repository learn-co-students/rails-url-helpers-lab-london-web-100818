class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
    "index"
  end

  def show
    @student = Student.find(params[:id])
    "show"
  end

  def update
    @student = Student.find(params[:format])
    if @student.active ? @student.update(active: false) : @student.update(active: true)
    end
    redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
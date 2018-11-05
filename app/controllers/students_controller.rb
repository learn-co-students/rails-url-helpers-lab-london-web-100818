class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  # def edit
   
  # end

  def activate
    student = Student.find(params[:id])
    student.update
  end

   def update
    student = Student.find(params[:id])
    student.status_change
    student.save
    redirect_to student_path(student)

  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
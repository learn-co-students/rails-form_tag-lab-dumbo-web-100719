class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end 

  def create
    byebug
    @student = Student.create(params.require(:student).permit(:first_name, :last_name))
    redirect_to new_student_path(@student)
  end

end

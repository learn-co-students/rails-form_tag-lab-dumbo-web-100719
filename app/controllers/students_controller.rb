class StudentsController < ApplicationController
  before_action :set_student, only: [:show]
  def index
    @students = Student.all
  end

  def show
    #before_action 
  end

  def new
    @student = Student.new
  end

  def create
    # session[:form_params] = params.inspect
    # redirect_to new_student_path
    student = Student.create(student_params)
    redirect_to student_path(student)
    
  end

  private

  def student_params
    #this allows me to specify wich fields I allow the user to access
    params.require(:student).permit(:first_name, :last_name)
  end

  def set_student
    @student = Student.find(params[:id])
  end

end

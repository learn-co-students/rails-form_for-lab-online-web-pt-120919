class StudentsController < ApplicationController 
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  def index
    @student = Students.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
		@student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def destroy
  end

  private

  def student_params
		params.require(:student).permit(:first_name, :last_name)
	end

end

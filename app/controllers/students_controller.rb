class StudentsController < ApplicationController 
  def new
    @student = Student.new
  end

  def create
    @students = Student.new(student_params)
    @students.save
    redirect_to student_path(@students)
  end

  def index
    @student = Students.all
  end

  def show
    @student = Student.find(student_params)
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def student_params
		params.require(:student).permit(:first_name, :last_name)
	end

end

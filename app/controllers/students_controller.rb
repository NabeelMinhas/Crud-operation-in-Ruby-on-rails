class StudentsController < ApplicationController
  def index
    @students=Student.all
  end

  def delete
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student =Student.new
  end

  def update
    @student = Student.find(params[:id])

    if @student.update(student_params)
      redirect_to ({action:"index"})
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def edit
    @student=Student.find(params[:id])
  end

  def create
    @students=Student.new(student_params)
    if @students.save
      redirect_to students_path, flash: { success: 'Your Image was successfully save.' }
    else
      redirect_to :back, flash: { alert: "Your Image don't save." }
    end
  rescue ActionController::ParameterMissing => e
    redirect_to :back, flash: { alert: "Please attach an image." }
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to students_path, status: :see_other
  end

  private
  def student_params
    params.require(:student).permit(:name, :rollnumber)
  end
end

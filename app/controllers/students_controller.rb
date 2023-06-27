class StudentsController < ApplicationController

    def index
      students = Student.all
      student = Student.where("first_name LIKE ? OR last_name LIKE ?", "%#{params[:name]}%", "%#{params[:name]}%")
      # render json: students
      render json: student
    end
  
    def show 
      student = Student.find(params[:id])
      render json: student
    end
  
  end
class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        all_grades = Student.order(grade: :desc).all
        render json: all_grades
    end

    def highest_grade
        highest_grade = Student.order(:grade).last
        render json: highest_grade 
    end

end

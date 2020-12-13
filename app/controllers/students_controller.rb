class StudentsController < ApplicationController
  
  def index
    @students = Student.all 
  end 

  def new 
    @student = Student.new 
  end 
  
  def create 
   #byebug
   @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
   redirect_to student_path(@student)
  end 

  def show 
    @student = Student.find(params[:id])
  end 

end

#Errors I keep getting:

# form page
#   form renders with the new action
#   new form submits content and renders form content (FAILED - 1)
#   creates a record in the database (FAILED - 2)


#   Failures:

#   1) form page new form submits content and renders form content
#      Failure/Error: fill_in 'first_name', with: "Margaery"
     
#      Capybara::ElementNotFound:
#        Unable to find field "first_name"



# 2) form page creates a record in the database
#    Failure/Error: fill_in 'first_name', with: "Sansa"
       
#    Capybara::ElementNotFound:
#      Unable to find field "first_name"
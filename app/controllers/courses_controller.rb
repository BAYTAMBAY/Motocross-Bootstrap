class CoursesController < ApplicationController
    def index
        @course = Course.all
    end

    def show
        @course = Course.find(params[:id])
    end

    def new
        @course = Course.new
    end

    def create
        @course = Course.new(course_params)
        if @course.save
          redirect_to courses_path
        else
          render :new
        end
    end
    def update
        @course = Course.find(params[:id])
        if @course.update(course_params)
          redirect_to courses_path
        else
          render :update
        end
    end

    def edit
        @course=Course.find(params[:id])
    end

    def destroy
        @course=Course.find(params[:id])
        @course.destroy
        redirect_to courses_path
    end
    
    def want
      if user_signed_in?
        Want.create(user_id: current_user.id, course_id: params[:id], permission: 0 )
        redirect_to root_path
      else
        
        redirect_to user_session_path,{message: 'Error Subscribing!' }
        
      end

    end
    private

    def course_params
      params.require(:course).permit(:description, :price, :admin_id)
    end
end

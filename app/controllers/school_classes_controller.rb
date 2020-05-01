require 'byebug'
class SchoolClassesController < ApplicationController 
  def new
    @school_class = SchoolClass.new
  end

  def create       
      @school_class = SchoolClass.new(school_classes_params)
      @school_class.save
      #byebug
      redirect_to school_class_path(@school_class)      
  end

  def index
    @school_classes = SchoolClass.all
  end

  def show
    #byebug
    @school_class = SchoolClass.find(params[:id])
  end

  def update
		@school_class = SchoolClass.find(params[:id])
		@school_class.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@school_class)
   
  #@article.update(title: params[:article][:title], description: params[:article][:description])
  
	end

  def edit
	  @school_class = SchoolClass.find(params[:id])
	end

  


  private

  def school_classes_params
		params.require(:school_class).permit(:title, :room_number)
  end
  
  # def school_class_params(*args)
  #   params.require(:school_class).permit(*args)
  # end

end


# class SchoolClassesController < ApplicationController

#   def show
#     @school_class = SchoolClass.find(params[:id])
#   end



#   def new
#     @school_class = SchoolClass.new
#   end

#   def create
#     @school_class = SchoolClass.new(class_params(:title, :room_number))
#     @school_class.save
#     redirect_to @school_class
#   end

#   def edit
#     @school_class = SchoolClass.find(params[:id])
#   end

#   def update
#     @school_class = SchoolClass.find(params[:id])
#     @school_class.update(class_params(:title, :room_number))
#     redirect_to @school_class
#   end

#   private

#   def class_params(*args)
#     params.require(:school_class).permit(*args)
#   end


# end

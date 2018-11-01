class DishesController < ApplicationController
  def index
    @courses = Course.all	
  end

  def new
    @course  = Course.find_by(id: params[:course_id])	
    @dish  = @course.dishes.new
  end
  
  def create
  	@course  = Course.find_by(id: params[:dish][:course_id])
  	@dish  = @course.dishes.new(dish_params)
    if @dish.save
      flash[:notice]  = "Dish created successfully."
      redirect_to list_dishes_dish_path(@course.id)
    else
      flash[:alert] = @dish.errors.messages
      render 'new'	
    end
  end

  def show
  	@dish = Dish.find_by(id: params[:id])
    redirect_to edit_dish_path(@dish)
  end
  def edit
  	@dish = Dish.find_by(id: params[:id])
  end

  def update
  	@dish = Dish.find_by(id: params[:id])
  	if @dish.update(dish_params)
      flash[:notice] = "Dish updated successfully."
      redirect_to list_dishes_dish_path(@dish.course.id) 
    else
      flash[:alert] = @dish.errors.messages
      render 'show'	
    end
  end
  
  def list_dishes
  	@course = Course.find_by(id: params[:id])
    @dishes = @course.dishes
  end
  
   def destroy
   	@dish = Dish.find_by(id: params[:id])
  	if @dish.destroy
  	  flash[:notice] = "Dish deleted successfully."	
  	  redirect_to dishes_path
      else
  	  flash[:error] = @dish.errors.messages
  	  redirect_to dishes_path
  	end
  end
  private

  def dish_params
  	params.require(:dish).permit(:name, :description, :image, :course_id, :price)
  end

end

#just so everybody is clear I followed along with the solution. CLEARLY NOT MY WORK  to clean an neat 
class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
  end
end

class Admin::ForeignCategoriesController < ApplicationController

  def new
    @foreign_category = ForeignCategory.new()

  end
  def create
    @foreign_category = ForeignCategory.new(foreign_category_params)
  if @foreign_category.save
  redirect_to admin_recommend_categories_path
  else
  render :new

  end
  end

  def index
    @recommend_categories =ForeignCategory.all
  end


  def edit
    @foreign_category =ForeignCategory.find(params[:id])

  end
  def update
    @foreign_category = ForeignCategory.find(params[:id])
    if@foreign_category.update(foreign_category_params)
  redirect_to admin_recommend_categories_path
    else
  render :edit
    end
  end


  def destroy
    @recommend_categories = ForeignCategory.find(params[:id])
    @recommend_categories.destroy
    redirect_to admin_recommend_categories_path
  end





  private
  def foreign_category_params
    params.require(:foreign_category).permit(:name)
  end
end

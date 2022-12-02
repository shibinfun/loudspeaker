class Admin::RecommendCategoriesController < ApplicationController
  def new
    @recommend_category = RecommendCategory.new()

  end
  def create
    @recommend_category = RecommendCategory.new(recommend_category_params)
if @recommend_category.save
  redirect_to admin_recommend_categories_path
else
  render :new

end
  end

  def index
    @recommend_categories =RecommendCategory.all
  end


  def edit
    @recommend_category =RecommendCategory.find(params[:id])

  end
  def update
    @recommend_category = RecommendCategory.find(params[:id])
    if@recommend_category.update(recommend_category_params)
  redirect_to admin_recommend_categories_path
    else
  render :edit
    end
  end


  def destroy
    @recommend_categories = RecommendCategory.find(params[:id])
    @recommend_categories.destroy
    redirect_to admin_recommend_categories_path
  end





  private
  def recommend_category_params
    params.require(:recommend_category).permit(:name)
  end
end

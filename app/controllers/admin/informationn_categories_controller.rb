class Admin::InformationnCategoriesController < ApplicationController
  def new
    @informationn_category = InformationnCategory.new()

  end
  def create
    @informationn_category = InformationnCategory.new(informationn_category_params)
if @informationn_category.save
  redirect_to admin_recommend_categories_path
else
  render :new

end
  end

  def index
    @recommend_categories =InformationnCategory.all
  end


  def edit
    @informationn_category =InformationnCategory.find(params[:id])

  end
  def update
    @informationn_category = InformationnCategory.find(params[:id])
    if@informationn_category.update(informationn_category_params)
  redirect_to admin_recommend_categories_path
    else
  render :edit
    end
  end


  def destroy
    @recommend_categories = InformationnCategory.find(params[:id])
    @recommend_categories.destroy
    redirect_to admin_recommend_categories_path
  end





  private
  def informationn_category_params
    params.require(:informationn_category).permit(:name)
  end
end

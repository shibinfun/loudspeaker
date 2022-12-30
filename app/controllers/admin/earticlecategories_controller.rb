class Admin::EarticlecategoriesController < ApplicationController
  def new
    @earticlecategory = Earticlecategory.new()

  end
  def create
    @earticlecategory = Earticlecategory.new(earticlecategory_params)
if @earticlecategory.save
  redirect_to admin_earticlecategories_path
else
  render :new

end
  end

  def index
    @earticlecategories =Earticlecategory.all
  end


  def edit
    @earticlecategory =Earticlecategory.find(params[:id])

  end
  def update
    @earticlecategory = Earticlecategory.find(params[:id])
    if@earticlecategory.update(earticlecategory_params)
  redirect_to admin_earticlecategories_path
    else
  render :edit
    end
  end


  def destroy
    @article_categories = Earticlecategory.find(params[:id])
    @article_categories.destroy
    redirect_to admin_earticlecategories_path
  end





  private
  def earticlecategory_params
    params.require(:earticlecategory).permit(:name)
  end
end

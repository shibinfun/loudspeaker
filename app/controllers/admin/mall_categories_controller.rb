class Admin::MallCategoriesController < ApplicationController

    def new
      @mall_category = MallCategory.new()

    end
    def create
      @mall_category = MallCategory.new(mall_category_params)
  if @mall_category.save
    redirect_to admin_recommend_categories_path
  else
    render :new

  end
    end

    def index
      @recommend_categories =MallCategory.all
    end


    def edit
      @mall_category =MallCategory.find(params[:id])

    end
    def update
      @mall_category = MallCategory.find(params[:id])
      if@mall_category.update(mall_category_params)
    redirect_to admin_recommend_categories_path
      else
    render :edit
      end
    end


    def destroy
      @recommend_categories = MallCategory.find(params[:id])
      @recommend_categories.destroy
      redirect_to admin_recommend_categories_path
    end





    private
    def mall_category_params
      params.require(:mall_category).permit(:name)
    end
  end

class Admin::RecommendsController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]
  before_action :require_is_admin
  layout "admin"
  def new
    @recommend = Recommend.new
  end
  def index
    @recommends = Recommend.all
  end
  def create
    @recommend = Recommend.new(recommend_params)
    @recommend.save
  end

  def destroy
    @recommend= Recommend.find(params[:id])
    @recommend.destroy
    if @recommend.save
      redirect_to admin_recommends_path
    else
      render :index
    end
  end

  def edit
  end

  def update
  end

  private
  def recommend_params
    params.require(:recommend).permit(:title,:linkk,:recommend_category_id)

  end
end

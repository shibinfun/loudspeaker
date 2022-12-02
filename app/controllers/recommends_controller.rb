class RecommendsController < ApplicationController
  def index
  @a = RecommendCategory.all
  if params[:recommend].blank?
  @recommends = Recommend.all
  else
  #@ac = recommendCategory.find_by(params[:category])
  @recommends = Recommend.where(recommend_category_id: params[:recommend])
  end
  end

  def show
    @recommend = Recommend.find(params[:id])
  end
end

class RecommendsController < ApplicationController
  def index
    @recommends = Recommend.all
  end

  def show
    @recommend = Recommend.find(params[:id])
  end
end

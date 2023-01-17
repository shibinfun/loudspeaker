class VideosController < ApplicationController


    before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]
  def show
    @video = Video.find(params[:id])
  end


  def index
  #@a = VideoCategory.all
  #if params[:category].blank?
  @videos = Video.all
  #else
  #@ac = ArticleCategory.find_by(params[:category])
  #@videos = Video.where(video_category_id: params[:category])

  end
  end

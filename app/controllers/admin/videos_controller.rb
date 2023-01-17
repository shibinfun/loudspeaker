class Admin::VideosController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]
  before_action :require_is_admin
  layout "admin"
  def show
  @video = Video.find(params[:id])
  end
  def index
  @videos = Video.all
  end

  def new
  @video = Video.new
  end

  def create
  @video = Video.new(video_params)

  if @video.save
    redirect_to admin_videos_path
  else
    render :new
  end
  end
  def edit
  @video =Video.find(params[:id])

  end
  def update
  @video = Video.find(params[:id])
  if@video.update(video_params)
  redirect_to admin_videos_path
  else
  render :edit
  end
  end


  def destroy
  @video = Video.find(params[:id])
  @video.destroy
  redirect_to admin_videos_path
  end


  private
  def video_params
  params.require(:video).permit(:title, :description,:video_category_id)
  end


end

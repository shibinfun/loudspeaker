class Admin::SeosController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]
  before_action :require_is_admin
  layout "admin"
  def show
  @seo = Seo.find(params[:id])
  end
  def index
  @seos = Seo.all
  end

  def new
  @seo = Seo.new
  end

  def create
  @seo = Seo.new(seo_params)

  if @seo.save
    redirect_to admin_seos_path
  else
    render :new
  end
  end
  def edit
  @seo =Seo.find(params[:id])

  end
  def update
  @seo = Seo.find(params[:id])
  if@seo.update(seo_params)
  redirect_to admin_seos_path
  else
  render :edit
  end
  end


  def destroy
  @seo = Seo.find(params[:id])
  @seo.destroy
  redirect_to admin_seos_path
  end


  private
  def seo_params
  params.require(:seo).permit(:title, :description,:number_id,:number1,:bumber2,:mobile1,:mobile2)
  end


end

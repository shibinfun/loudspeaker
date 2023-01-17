class Admin::MallsController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]
  before_action :require_is_admin
  layout "admin"
  def show
  @mall = Mall.find(params[:id])
  end
  def index
  @malls = Mall.all
  end

  def new
  @mall = Mall.new
  end

  def create
  @mall = Mall.new(mall_params)

  if @mall.save
    redirect_to admin_malls_path
  else
    render :new
  end
  end
  def edit
  @mall =Mall.find(params[:id])

  end
  def update
  @mall = Mall.find(params[:id])
  if@mall.update(mall_params)
  redirect_to admin_malls_path
  else
  render :edit
  end
  end


  def destroy
  @mall = Mall.find(params[:id])
  @mall.destroy
  redirect_to admin_malls_path
  end


  private
  def mall_params
  params.require(:mall).permit(:title, :description,:mall_category_id)
  end


  end

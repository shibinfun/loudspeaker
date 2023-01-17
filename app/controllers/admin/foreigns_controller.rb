class Admin::ForeignsController < ApplicationController

  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]
  before_action :require_is_admin
  layout "admin"
  def show
  @foreign = Foreign.find(params[:id])
  end
  def index
  @foreigns = Foreign.all
  end

  def new
  @foreign = Foreign.new
  end

  def create
  @foreign = Foreign.new(foreign_params)

  if @foreign.save
    redirect_to admin_foreigns_path
  else
    render :new
  end
  end
  def edit
  @foreign =Foreign.find(params[:id])

  end
  def update
  @foreign = Foreign.find(params[:id])
  if@foreign.update(foreign_params)
  redirect_to admin_foreigns_path
  else
  render :edit
  end
  end


  def destroy
  @foreign = Foreign.find(params[:id])
  @foreign.destroy
  redirect_to admin_foreigns_path
  end


  private
  def foreign_params
  params.require(:foreign).permit(:title, :description,:foreign_category_id)
  end

end

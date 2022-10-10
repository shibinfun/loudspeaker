class Admin::QqgroupsController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]
  before_action :require_is_admin
  layout "admin"
  def new
    @qqgroup =Qqgroup.new
  end
  def index
    @qqgroups = Qqgroup.all
  end
def destroy
  @qqgroup = Qqgroup.find(params[:id])
   if @qqgroup.destroy
     redirect_to admin_qqgroups_path
   else
   render :index
 end
end
  def create
    @qqgroup =Qqgroup.new(qqgroup_params)
    if @qqgroup.save
      redirect_to admin_qqgroups_path
    else
      render :new
    end
  end

  def edit
    @qqgroup=Qqgroup.find(params[:id])
  end

  def update
      @qqgroup=Qqgroup.find(params[:id])
    if  @qqgroup.update(qqgroup_params)
      redirect_to admin_qqgroups_path
    else
render :new
end

  end

  private
  def qqgroup_params
    params.require(:qqgroup).permit( :content)
  end
end

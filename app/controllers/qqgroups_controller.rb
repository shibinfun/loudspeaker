class QqgroupsController < ApplicationController



  def index
    @qqgroups = Qqgroup.all
  end
  def new
    @qqgroups = Qqgroup.all
  end


  def show
    @qqgroup = Qqgroup.find(params[:id])
  end
end

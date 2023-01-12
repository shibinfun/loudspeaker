class QqgroupsController < ApplicationController

  layout 'customer'

  def index
    @qqgroups = Qqgroup.all
  end

  def show
    @qqgroup = Qqgroup.find(params[:id])
  end
end

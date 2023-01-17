class Admin::InformationnsController < ApplicationController

  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]
  before_action :require_is_admin
  layout "admin"
def show
  @informationn = Informationn.find(params[:id])
end
def index
  @informationns = Informationn.all
end

def new
  @informationn = Informationn.new
end

def create
  @informationn = Informationn.new(informationn_params)

  if @informationn.save
    redirect_to admin_informationns_path
  else
    render :new
  end
end
def edit
  @informationn =Informationn.find(params[:id])

end
def update
  @informationn = Informationn.find(params[:id])
  if@informationn.update(informationn_params)
redirect_to admin_informationns_path
  else
render :edit
  end
end


def destroy
  @informationn = Informationn.find(params[:id])
  @informationn.destroy
  redirect_to admin_informationns_path
end


private
def informationn_params
  params.require(:informationn).permit(:title, :content,:informationn_category_id)
end


end

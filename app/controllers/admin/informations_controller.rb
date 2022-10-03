class Admin::InformationsController < ApplicationController

  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]
  before_action :require_is_admin
def show
  @information = Information.find(params[:id])
end
def index
  @informations = Information.all
end

def new
  @information = Information.new
end

def create
  @information = Job.new(information_params)

  if @job.save
    redirect_to admin_informations_path
  else
    render :new
  end
end
def edit
  @information =Information.find(params[:id])

end
def update
  @information = Information.find(params[:id])
  if@information.update(information_params)
redirect_to admin_informations_path
  else
render :edit
  end
end


def destroy
  @information = Information.find(params[:id])
  @information.destroy
  redirect_to admin_informations_path
end


private
def information_params
  params.require(:information).permit(:title, :content)
end


end

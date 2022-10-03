class InformationsController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]
def show
  @information = Information.find(params[:id])
end
def index
  @informations = Information.all
end


end

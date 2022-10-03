class InformationnsController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]
def show
  @informationn = Informationn.find(params[:id])
end
def index
  @informationns = Informationn.all
end


end

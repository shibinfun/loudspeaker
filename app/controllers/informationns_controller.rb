class InformationnsController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]
def show
  @informationn = Informationn.find(params[:id])
end


def index
@a = InformationnCategory.all
if params[:category].blank?
@informationns = Informationn.all
else
#@ac = ArticleCategory.find_by(params[:category])
@informationns = Informationn.where(informationn_category_id: params[:category])

end
end
end

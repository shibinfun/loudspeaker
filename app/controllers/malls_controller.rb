class MallsController < ApplicationController


  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]
def show
  @mall = Mall.find(params[:id])
end


def index
@a = MallCategory.all
if params[:category].blank?
@malls = Mall.all
else
#@ac = ArticleCategory.find_by(params[:category])
@malls = Mall.where(mall_category_id: params[:category])

end
end
end

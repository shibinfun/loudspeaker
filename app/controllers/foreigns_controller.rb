class ForeignsController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]
def show
  @foreign = Foreign.find(params[:id])
end


def index
@a = ForeignCategory.all
if params[:category].blank?
@foreigns = Foreign.all
else
#@ac = ArticleCategory.find_by(params[:category])
@foreigns = Foreign.where(foreign_category_id: params[:category])

end
end

end

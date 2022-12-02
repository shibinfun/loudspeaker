class ArticlesController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]
def show
  @article = Article.find(params[:id])
end


  def index
@a = ArticleCategory.all
if params[:category].blank?
  @articles = Article.all
else
#@ac = ArticleCategory.find_by(params[:category])
  @articles = Article.where(article_category_id: params[:category])
end
 end












protected



end

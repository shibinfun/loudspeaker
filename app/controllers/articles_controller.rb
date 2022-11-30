class ArticlesController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]
def show
  @article = Article.find(params[:id])
end


  def index
@a = ArticleCategory.all
if params[:article_category].blank?
  @articles = Article.all
else
  @articles = Article.where(:category)
end
 end












protected



end

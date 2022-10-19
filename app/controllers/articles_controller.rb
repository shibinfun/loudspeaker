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

  @article_category_id = Article_category.find_by(id: params[:article_category]).id
  @articles = Article.where(:article_category_id => @article_category_id)
end
 end












protected



end

class ArticlesController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]
def show
  @article = Article.find(params[:id])
end
def index
  @articles = Article.all
end
end

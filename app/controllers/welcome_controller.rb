class WelcomeController < ApplicationController
  def index
      flash[:notice] = "本网站刚刚上线，内容不足，分享知识，现在多数文章是石斌自己写的，非常枯燥乏味，也几乎没用，其实，最有用的知识在|有用网址|栏目里面"
    @asks = Ask.all
    @articles = Article.all
  end


end

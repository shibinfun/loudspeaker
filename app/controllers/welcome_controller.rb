class WelcomeController < ApplicationController
  def index
      flash[:notice] = "有用网址，里面的东西比较有用"
    @asks = Ask.all
    @articles = Article.all
  end


end

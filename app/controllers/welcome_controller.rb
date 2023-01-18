class WelcomeController < ApplicationController
  def index
      #flash[:notice] = ""
    @asks = Ask.all
    @articles = Article.all
  end

  def show
      #flash[:notice] = ""


  end

end

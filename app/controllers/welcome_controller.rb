class WelcomeController < ApplicationController
  def index
      #flash[:notice] = ""
    @asks = Ask.all
    @articles = Article.all
  end


end

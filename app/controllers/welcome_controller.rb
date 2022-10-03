class WelcomeController < ApplicationController
  def index
    @asks = Ask.all
    @articles = Article.all
  end


end

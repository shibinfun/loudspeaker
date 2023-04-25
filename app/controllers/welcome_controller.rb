class WelcomeController < ApplicationController

  layout 'customer'

  def index
      #flash[:notice] = ""
    
    @articles = Article.all
  end

  def show
      #flash[:notice] = ""


  end

end

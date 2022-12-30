class EarticlesController < ApplicationController
  layout 'english'
  def new
    @e = Earticle.new
  end


  def index
@earticlecategory = Earticlecategory.all
if params[:category].blank?
  @e = Earticle.all
else
#@ac = ArticleCategory.find_by(params[:category])
  @e = Earticle.where(earticlecategory_id: params[:category])
end
 end





  def edit
    @e = Earticle.find(params[:id])
  end

  def show
    @e = Earticle.find(params[:id])

  end
end

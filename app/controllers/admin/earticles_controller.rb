class Admin::EarticlesController < ApplicationController
def new
  @earticle = Earticle.new
end
def create

  @earticle = Earticle.new(earticle_params)
  if @earticle.save
    flash[:notice] = "成功提交"
    redirect_to earticles_path(@earticle)
  else
    render :new
  end
end


def index
  @earticles =Article.all

end
private

def earticle_params
  params.require(:earticle).permit(:title,:description,:earticlecategory_id)
end
end

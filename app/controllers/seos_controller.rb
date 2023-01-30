class SeosController < ApplicationController

      before_action :authenticate_user!, only:[:create,:update,:edit,:destroy]

layout 'customer'
    def show
      @seo = Seo.find(params[:id])
    end


    def index
    #@a = seoCategory.all
    #if params[:category].blank?
    @seos = Seo.all
    #else
    #@ac = ArticleCategory.find_by(params[:category])
    #@seos = seo.where(seo_category_id: params[:category])

    end


    def new
   @seos = Seo.new
    end

end

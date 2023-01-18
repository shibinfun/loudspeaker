class WordkeysController < ApplicationController

  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]



def show
  @wordkey = Wordkey.find(params[:id])
end


def index
#@a = wordkeyCategory.all
#if params[:category].blank?
@wordkeys = Wordkey.all
#else
#@ac = ArticleCategory.find_by(params[:category])
#@wordkeys = wordkey.where(wordkey_category_id: params[:category])

end
end

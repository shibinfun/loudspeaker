class Admin::SentencesController < ApplicationController


  layout "admin"


def new
@sentence = Sentence.new
end



  def create
    @sentence = Sentence.new(sentence_params)
    if @sentence.save
      redirect_to sentences_path
    else
      render :new
  end
  end
  private
  def sentence_params
    params.require(:sentence).permit(:title)

  end
end

class SentencesController < ApplicationController

  def new
    @sentence = Sentence.new()

  end
  def create
    @sentence = Sentence.new(sentence_params)
    if @sentence.save
      redirect_to sentences_path
    else
      render :new
end
  end

  def index
    @sentences =Sentence.all

  end
end

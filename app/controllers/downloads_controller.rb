class DownloadsController < ApplicationController

  def show
    @article = Download.find(params[:id])
  end
  def index
    @downloads = Download.all
  end


end

class Admin::DownloadsController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]

    def new

      @download = Download.new
    end

    def create

      @download = Download.new(download_params)
      if @download.save
        flash[:notice] = "成功提交"
        redirect_to admin_downloads_path(@download)
      else
        render :new
      end
    end

    def index
      @downloads = Download.all
    end


    private

    def download_params
      params.require(:download).permit(:title,:attachment)
    end

end

class Admin::DownloadsController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]
  before_action :require_is_admin
layout "admin"
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
def edit
  @download =Download.find(params[:id])

end
def update
  @download =Download.find(params[:id])
  if@download.update(download_params)
  redirect_to admin_downloads_path
  else
  render :edit
  end

end
    def index
      @downloads = Download.all
    end
    def destroy
      @download = Download.find(params[:id])
      @download.destroy
      redirect_to admin_downloads_path
    end
def show
  @download = Download.find(params[:id])
end

    private

    def download_params
      params.require(:download).permit(:title,:attachment)
    end

end

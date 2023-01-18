class Admin::WordkeysController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]
  before_action :require_is_admin
  layout "admin"
  def show
  @wordkey = Wordkey.find(params[:id])
  end
  def index
  @wordkeys = Wordkey.all
  end

  def new
  @wordkey = Wordkey.new
  end

  def create
  @wordkey = Wordkey.new(wordkey_params)

  if @wordkey.save
    redirect_to admin_wordkeys_path
  else
    render :new
  end
  end
  def edit
  @wordkey =Wordkey.find(params[:id])

  end
  def update
  @wordkey = Wordkey.find(params[:id])
  if@wordkey.update(wordkey_params)
  redirect_to admin_wordkeys_path
  else
  render :edit
  end
  end


  def destroy
  @wordkey = Wordkey.find(params[:id])
  @wordkey.destroy
  redirect_to admin_wordkeys_path
  end


  private
  def wordkey_params
  params.require(:wordkey).permit(:title, :description,:number1,:number2)
  end

end

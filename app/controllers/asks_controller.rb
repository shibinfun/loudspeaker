class AsksController < ApplicationController
  def new
    @ask = Ask.new
  end

  def show
    @ask = Ask.find(params[:id])
    @answers = @ask.answers
  end
  def create
     @ask = Ask.new(ask_params)

     if @ask.save
       redirect_to asks_path
     else
       render :new
     end
   end
def index
  @asks = Ask.all

end
   private

     def ask_params
       params.require(:ask).permit(:asking)
     end
end

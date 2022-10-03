class AnswersController < ApplicationController
  before_action :authenticate_user!

def new
  @ask=Ask.find(params[:ask_id])
  @answer = Answer.new
end
def create
@ask = Ask.find(params[:ask_id])
@answer = Answer.new(answer_params)
@answer.ask = @ask
@answer.user = current_user
if @answer.save
  flash[:notice] = "已经成功提交回答"
  redirect_to ask_path(@ask)
else
  render :new
end
end
private
def answer_params
params.require(:answer).permit(:content)
end


end

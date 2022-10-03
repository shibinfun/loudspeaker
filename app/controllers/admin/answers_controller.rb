class Admin::AnswersController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create,:update,:edit,:destroy]
  before_action :require_is_admin
def show
  @answer = Answer.find(params[:id])
end
def index
  @answers = Answer.all
end

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

def edit
  @answer =Answer.find(params[:id])

end
def update
  @answer = Answer.find(params[:id])
  if@answer.update(answer_params)
redirect_to admin_answers_path
  else
render :edit
  end
end


def destroy
  @answer = Answer.find(params[:id])
  @answer.destroy
  redirect_to admin_answers_path
end


private
def answer_params
  params.require(:answer).permit( :content)
end


end

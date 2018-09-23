class SubscribeController < ApplicationController

  def index
    @subscribes = Subscribe.all
  end

  def new
    @subscribes = Subscribe.new
  end

  def create
    @subscribes = Subscribe.new(subscribes_params)
    if @subscribes.save
      redirect_to "/success"
    else
      redirect_to "/sub", notice: "姓名/暱稱及Email均為必須欄位，請正確填寫，謝謝！"
    end
  end

  private
  def subscribes_params
    params.require(:subscribe).permit(:name, :email)
  end
end

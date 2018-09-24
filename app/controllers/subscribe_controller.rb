class SubscribeController < ApplicationController

  def index
    @subscribes = Subscribe.all

    respond_to do |format|
      format.html
      format.txt {render text: @subscribes.to_txt }
  end
  end

  def new
    @subscribes = Subscribe.new
  end

  def create
    @subscribes = Subscribe.new(subscribe_params)
    if @subscribes.save
      redirect_to "/success"
    else
      redirect_to "/sub", notice: "姓名/暱稱及Email均為必須欄位，請正確填寫，謝謝！"
    end
  end

  def edit
    @subscribe = Subscribe.find(params[:id])
    redirect_to "/subscribe/edit(subscribe)"
  end

  def destroy
    @subscribe = Subscribe.find(params[:id])
    @subscribe.destroy if @subscribe
    redirect_to "/subscribe"
  end

  private
  def subscribe_params
    params.require(:subscribe).permit(:name, :email)
  end
end

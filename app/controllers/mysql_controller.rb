class MysqlController < ApplicationController

  def index
    @mysqls = Mysql.all
  end

  def new
    @mysqls = Mysql.new
  end

  def create
    @mysqls = Mysql.new(subscribe_params)
    if @mysqls.save
      redirect_to "/mysql/success/"
    else
      redirect_to "/mysql/new/", notice: "姓名/暱稱及Email均為必須欄位，請正確填寫，謝謝！"
    end
  end

  def edit
  end

  def update
	  if @mysqls.update(mysql_params)
		  redirect_to "/mysql/"
          else
		  render :edit
	  end
  end

  def destroy
    @mysql = Mysql.find(params[:id])
    @mysql.destroy if @mysql
    redirect_to "/mysql/"
  end

  private
  def mysql_params
    params.require(:mysql).permit(:name, :email)
  end
end

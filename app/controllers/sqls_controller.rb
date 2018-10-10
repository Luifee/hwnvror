class SqlsController < ApplicationController

  def index
    @sqls = Sql.all
  end

  def new
    @sql = Sql.new
  end

  def create
    @sql = Sql.new(sql_params)
    if @sql.save
      redirect_to "/sqls/success/"
    else
      render :new, notice: "姓名/暱稱及Email均為必須欄位，請正確填寫，謝謝！"
    end
  end

  private
  def sql_params
	  params.require(:sql).permit(:name, :email)
  end

end

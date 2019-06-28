class SqlsController < ApplicationController
  before_action :find_email, only: [:create]
  rescue_from ::SQLite3::ConstraintException, with: :unique

  def index
    @sqls = Sql.all
    render layout: "apd"
  end

  def new
    @sql = Sql.new
    render layout: "apd"
  end

  def create
    @sql = Sql.new(sql_params)
    if @sql.save
      redirect_to "/sqls/success", layout: "apd"
    else
      redirect_to "/sqls", layout: "apd", notice: "請確認Email格式是否有誤，謝謝！"
    end
  end

  def delete
    params[:delete].each do |id|
      Sql.find(id.to_i).destroy
    end
    redirect_to "/sqls/list", layout: "apd", notice: "Email已刪除"
  end

  def subscribed
	  render layout: "apd"
  end

  private
  def sql_params
	  params.require(:sql).permit(:email, :timestamps, :ip_address)
  end

  def find_email
	  @sql = Sql.find_by(id: params[:id])
  end

  def unique
	  redirect_to "/sqls/subscribed"
  end
end

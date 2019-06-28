class OverallController < ApplicationController

  def index
	  if session[:name].present?
		   redirect_to '/site01/hi', layout: 'apd'
          end
  end

  def hi
  end

  def new
	  @site01 = Site01.new
          render layout: "apd"
  end

  def list
	  @site01s = Site01.all
	  render layout: "apd"
  end

  def success
  end

  def reg
	  @site01 = Site01.new(reg_params)
	  if @site01.save
		  redirect_to "/site01/success", layout: "apd"
	  else
		  render "/site01/new", layout: "apd", notice: "請確認Email格式是否有誤，謝謝！"
	  end
  end

  def authorize
  end

  private
  def reg_params
          params.require(:site01).permit(:name, :email, :birthday, :password, :password_confirmation)
  end

  def find_email
          @site01 = Site01.find_by(id: params[:id])
  end

end

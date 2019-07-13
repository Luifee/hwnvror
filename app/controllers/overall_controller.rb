class OverallController < ApplicationController

  def index
	  if session[:name].present?
		   redirect_to '/overall/hi', layout: 'table'
          end
  end

  def hi
  end

  def new
	  @overall = Overall.new
          render layout: "datepicker"
  end

  def list
	  @overalls = Overall.all
	  render layout: "table"
  end

  def success
  end

  def reg
	  @overall = Overall.new(reg_params)
	  if @overall.save
		  DmMailer.say_hello_to(@overall).deliver_now
		  redirect_to "/overall/success"
	  else
		  render "/overall/new", layout: "table", notice: "請確認Email格式是否有誤，謝謝！"
	  end
  end

  def authorize
  end

  private
  def reg_params
          params.require(:overall).permit(:name, :email, :birthday, :password, :password_confirmation)
  end

  def find_email
          @overall = Overall.find_by(id: params[:id])
  end

end

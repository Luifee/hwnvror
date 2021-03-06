class BktoController < ApplicationController

  def index
	  if session[:nickname].present?
		  redirect_to '/bkto/hi'
	  end
  end

  def hi
  end

  def create
	  if params[:nickname].present?
		  session[:nickname] = params[:nickname]
		  redirect_to '/bkto/hi'
	  end
  end

  def withdraw
	  @_current_user = session[:nickname] = nil
	  redirect_to '/bkto'
  end

  private

  def current_uesr
	  @_current_user ||= session[:nickname] && User.find_by(id: session[:nickname])
  end
end

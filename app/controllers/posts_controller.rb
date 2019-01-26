class PostsController < ApplicationController

        def list
		render layout: "apd"
        end
	
        def create
		messages = params[:qa, :history]
		redirect_to "/posts/"
        end

	def delete
	end
end

class PostsController < ApplicationController

        def list
		render layout: "apd"
		@posts = Array.new
        end
	
        def create
		redirect_to "/posts/"
        end

	def delete
	end
end

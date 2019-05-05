class PostsController < ApplicationController

        def list
		@posts=[]
		if params[:message].present?
                        new={}
                        new[:id]= Digest::MD5.hexdigest(params[:message])
                        new[:message]= params[:message]
                        @posts.push(new)
			if params[:prev].present?
				params[:prev].each do |mediate|
	                        	prev={}
        	                	prev[:id] = Digest::MD5.hexdigest(mediate)
                	        	prev[:message] = mediate
					@posts.push(prev)
				end
			end
		end
		render layout: "apd"
        end

	def delete
		revision=[]
		@temp=[]
		if params[:history].present?
			params[:history].each do |mediate|
				submerge = Digest::MD5.hexdigest(mediate)
				unless params[:del].include?(submerge)
					revision.push(mediate)
				end
			end
		end
		revision.each do |f|
			reset={}
			reset[:id]=Digest::MD5.hexdigest(f)
                        reset[:message]=f
			@temp.push(reset)
		end
                @posts=[]
		@posts.replace(@temp)
		render "list"
	end
end

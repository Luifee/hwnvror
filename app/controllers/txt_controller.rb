class TxtController < ApplicationController

	def list
		render layout: "table"
	end
	
	def delete
		revision=[]
		File.open("tmp/emaildump.txt", "r") do |base|
			base.each_line do |line|
				submerge = Digest::MD5.hexdigest(line)
				unless params[:delete].include?(submerge)
					revision.push(line)
				end
			end
		end
		print revision
		renew=File.open("tmp/emaildump.txt", "w")
		renew.puts(revision)
		renew.close
		redirect_to "/txt/list", notice: "指定email已刪除"
	end

	def create
		data = params[:email]
		target = "tmp/emaildump.txt"
		if subscribe_params && data =~ /\A([\w\.%a\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i && !(File.read(target).include?(data))
			subs = File.open(target, "a+")
			subs.puts(data + "; ")
			subs.close
			redirect_to "/txt/success/"
		elsif File.read(target).include?(data)
			redirect_to "/txt/", notice: "此信箱已訂閱電子報，謝謝支持！"
		else
			redirect_to "/txt/", notice: "請確認email信箱是否正確填寫，謝謝！"
		end
	end
	
	private
	def subscribe_params
		params.require(:email)
		params.permit(:email)
	end

end

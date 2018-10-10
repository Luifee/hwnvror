class TxtController < ApplicationController

	def list
		render layout: "apd"
	end
	
	def new
	end

	def copy
		File.open("tmp/cp.txt", "wb") do |dup|
                        File.open("tmp/emaildump.txt", "rb") do |copy|
                                while buff = copy.read(4096)
                                dup.write(buff)
                                dup.close
                                end
                        end
                end
	end

	def destroy_multi
		copy
		params[:des].to_i.each do |raw|
			File.open("tmp/emaildump.txt", "wb") do |renew|
				File.open("tmp/cp.txt", "rb")  do |base|
					while buffr = base.read(4096)
					renew.write(raw)
					renew.close
					end
				end
			end
		end
		redirect_to "/txt/list/", notice: "指定email已刪除"
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

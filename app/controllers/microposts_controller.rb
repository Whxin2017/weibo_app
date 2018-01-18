class MicropostsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]
	before_action :correct_user,   only: :destroy

	def create
		@micropost = current_user.microposts.build(micropost_params)
		if @micropost.save
<<<<<<< HEAD
			flash[:success] = "Micropost created!"
=======
			flash[:success] = "微博已上传!"
>>>>>>> CNweibo
			redirect_to root_url
		else
			@feed_items = []
			render 'static_pages/home'
		end

	end

	def destroy
		@micropost.destroy
<<<<<<< HEAD
		flash[:success] = "Micropost deleted"
=======
		flash[:success] = "微博已删除"
>>>>>>> CNweibo
		redirect_to request.referrer || root_url
	end

	private

	def micropost_params
		params.require(:micropost).permit(:content, :picture)
	end

	def correct_user
		@micropost = current_user.microposts.find_by(id: params[:id])
		redirect_to root_url if @micropost.nil?
	end

end

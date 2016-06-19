class MicropostsController < ApplicationController
	def show
		@micropost = Micropost.find(1)
	end
	
	def new
	end
end

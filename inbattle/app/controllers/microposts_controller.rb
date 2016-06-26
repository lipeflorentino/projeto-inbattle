class MicropostsController < ApplicationController
	def show
		@micropost = Micropost.all
	end
	
	def new
	      @micropost = Micropost.new
	end
	
	def create
    @micropost = Micropost.new(micropost_params)
    if @micropost.save
      redirect_to @micropost
    else
      render 'new'
    end
  end
  
    private

    def micropost_params
      params.require(:micropost).permit(:tema, :endereco, :user_id,
                                   :pontos)
    end
end

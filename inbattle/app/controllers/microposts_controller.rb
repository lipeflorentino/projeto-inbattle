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
  
	def iniciais
		if Micropost.count != 0
			for i in 1..Micropost.count
				inicia = Micropost.find(i)
				inicia.delete
			end
			inicia = Micropost.new
			for i in 1..5
				inicia.pontos=0
				inicia.id=i
				inicia.save
			end
		else
			for i in 1..5
				inicia = Micropost.new
				inicia.pontos=0
				inicia.id=i
				inicia.save
			end
		end
		redirect_to root_path
	end

	
    private

    def micropost_params
      params.require(:micropost).permit(:tema, :endereco, :user_id,
                                   :pontos)
    end
end

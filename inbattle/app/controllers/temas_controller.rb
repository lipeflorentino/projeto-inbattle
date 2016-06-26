class TemasController < ApplicationController
	def show
		@tema = Tema.all
	end
	
	def new
	      @tema = Tema.new
	end
	
	def index
	    @temaa = Tema.all
  end
  
	def create
    @tema = Tema.new(tema_params)
    if @tema.save
	    @tema = Tema.new(tema_params)
    	render 'new'
    else
      render 'new'
    end

  end
  
    private

    def tema_params
      params.require(:tema).permit(:tema, :user_id)
    end
end

class CandidatosController < ApplicationController

	def show
		@candidato = Candidato.all
	end
	
	def index
		@candidato = Candidato.all
	end	
	
	def new
	      @candidato = Candidato.new
	end
	
	def create
    @candidato = Candidato.new(candidato_params)
    if @candidato.save
	    @candidato = Candidato.new(candidato_params)
    	render 'new'
    else
      render 'new'
    end

  end
  
    private

    def candidato_params
      params.require(:candidato).permit(:endereco)
    end
end

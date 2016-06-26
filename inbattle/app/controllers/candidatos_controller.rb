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

	def soma1
		@cara=Micropost.find(4)
		@ganhador=Candidato.find(@cara.pontos)
		@ganhador.pontos=@ganhador.pontos.to_i+1
		if @ganhador.save
		redirect_to root_url
		end
	end
	
	def soma2
		@cara=Micropost.find(5)
		@ganhador=Candidato.find(@cara.pontos)
		@ganhador.pontos=@ganhador.pontos.to_i+1
		if @ganhador.save
		redirect_to root_url
		end
	end

  
    private

    def candidato_params
      params.require(:candidato).permit(:endereco)
    end
end

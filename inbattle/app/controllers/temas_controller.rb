class TemasController < ApplicationController
	def show
		@tema = Tema.all
	end
	
	def new
	      @tema = Tema.new
	end
	
	def index
	    @tema = Tema.all
  end
  
	def create
    @tema = Tema.new(tema_params)
    if @tema.save
	    @tema = Tema.new
		flash[:success] = "Assunto incluído com êxito"
    	render 'new'
    else
      render 'new'
    end
	end
	
	
	def somatema1
		@cara=Micropost.find(6)
		@ganhador=Tema.find(@cara.pontos)
		@ganhador.pontos=@ganhador.pontos.to_i+1
		if @ganhador.save
		redirect_to root_url
		end
	end
	
	def somatema2
		@cara=Micropost.find(7)
		@ganhador=Candidato.find(@cara.pontos)
		@ganhador.pontos=@ganhador.pontos.to_i+1
		if @ganhador.save
		redirect_to root_url
		end
	end		
	
	def somatema3
		@cara=Micropost.find(8)
		@ganhador=Candidato.find(@cara.pontos)
		@ganhador.pontos=@ganhador.pontos.to_i+1
		if @ganhador.save
		redirect_to root_url
		end
	end
  
    private

    def tema_params
      params.require(:tema).permit(:conteudo)
    end
end

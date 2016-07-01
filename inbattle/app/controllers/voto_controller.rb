class VotoController < ApplicationController

	def vototema1
		@ganhador=Tema.find(2)
		@ganhador.pontos=@ganhador.pontos.to_i+1
		if @ganhador.save
		redirect_to root_url
		end
	end
	
	def vototema2
		@ganhador=Tema.find(3)
		@ganhador.pontos=@ganhador.pontos.to_i+1
		if @ganhador.save
		redirect_to root_url
		end
	end		
	
	def vototema3
		@ganhador=Tema.find(4)
		@ganhador.pontos=@ganhador.pontos.to_i+1
		if @ganhador.save
		redirect_to root_url
		end
	end

end

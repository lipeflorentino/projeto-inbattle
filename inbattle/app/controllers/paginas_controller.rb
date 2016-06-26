class PaginasController < ApplicationController
  def home
		@tema = Tema.find(1)

		@aux1 = define 
		@aux2 = infine
		if @aux1==@aux2
			if @aux1==Candidato.count
				@aux2=@aux1-1
			else
			   @aux2=@aux1+1
			end
		end
		@candidatoa = Candidato.find(@aux1)
		@candidatob = Candidato.find(@aux2)
	
  end

  def alistamento
  end

  def heroisdeguerra
  end

  def sos
  end

end
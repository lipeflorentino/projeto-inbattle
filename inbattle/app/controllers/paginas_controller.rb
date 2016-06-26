class PaginasController < ApplicationController
  def home
			@aux1 = define 
			@aux2 = infine

		@tema = Tema.find(1)
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
class PaginasController < ApplicationController
  def home
		@tema = Tema.find(Micropost.find(1))

		@aux1 = define 
		@aux2 = infine
		if @aux1==@aux2
			if @aux1==Candidato.count
				@aux2=@aux1-1
			else
			   @aux2=@aux1+1
			end
		end

		@guarda=Micropost.find(4)
		@guarda.pontos=@aux1
		@guarda.save
		@guarda=Micropost.find(5)
		@guarda.pontos=@aux2
		@guarda.save

		@candidatoa = Candidato.find(@aux1)
		@candidatob = Candidato.find(@aux2)
		
		@assunto1 = Tema.find(2)
		@assunto2 = Tema.find(3)
		@assunto3 = Tema.find(4)
		
	
  end

  def alistamento
  end

  def heroisdeguerra
  	
  	@candidatoa = Candidato.find(1)
		@candidatob = Candidato.find(2)
		@candidatoc = Candidato.find(3)
		
  end

  def sos
  end

end
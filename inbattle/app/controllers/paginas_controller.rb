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
  	#! Constroi array dos primeiros 3 candidatos com maior quantidade de votos de acordo com um id de tema
  	tema = Tema.find(1)
  	candidatos = verifica_mais_votos(tema.id) 

		if !candidatos.nil?
  		@candidatoDiaAtual1 = candidatos[0]
		  	if !candidatos[1].nil?
					@candidatoDiaAtual2 = candidatos[1]
			end
			if !candidatos[2].nil?
				@candidatoDiaAtual3 = candidatos[2]
			end
		else
			candidato_nulo = Candidato.find(1)
			candidato_nulo.endereco = "/"
			@candidatoDiaAtual1 = candidato_nulo
			@candidatoDiaAtual2 = candidato_nulo
			@candidatoDiaAtual3 = candidato_nulo
		end
		
  end

  def sos
  end

end
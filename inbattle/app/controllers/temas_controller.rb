class TemasController < ApplicationController

	def show
		@tema = Tema.find(params[:id])
	end

	def new
	      @tema = Tema.new
	end
	
	def index
	    @tema = Tema.all
			end
	
	def edit
		@tema = Tema.find(params[:id])
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
	
	def update
		@tema = Tema.find(params[:id])
		if @tema.update_attributes(tema_params)
			flash[:success] = "Profile updated"
			redirect_to temas_path
		else
		render 'edit'
		end
	end
	
	def trocar_os_temas
  	ordem1 = Tema.find(1)
  	i = 1
  	ordem1.pontos = 0
  	ordem1.save
  	while i < Tema.count
  		ordem1 = Tema.find(1)
  		ordem = Tema.find(i+1)
  		if ordem.pontos>ordem1.pontos
  			ordem1.id=Tema.count+1
  			ordem1.save
  			ordem.id=1
  			ordem.save
  			ordem1.id=i+1
  			ordem1.pontos=0
  			ordem1.save
  		  else
    		ordem.pontos=0
    		ordem.save
    		end
    	i = i + 1
    	end
    	redirect_to root_path
	end
	
	
    private

    def tema_params
      params.require(:tema).permit(:conteudo, :id)
    end
end

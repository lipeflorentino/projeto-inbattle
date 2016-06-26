module SessionsHelper

  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

    # Remembers a user in a persistent session.
  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end
   
  # Returns the user corresponding to the remember token cookie.
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
	user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end
  
  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
  
  # Forgets a persistent session.
  def forget(user)
	user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  # Logs out the current user.
  def log_out
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end
  
    # Returns true if the given user is the current user.
  def current_user?(user)
    user == current_user
  end
  
      # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
	
    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
	
	  # Redirects to stored location (or to the default).
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # Stores the URL trying to be accessed.
  def store_location
    session[:forwarding_url] = request.url if request.get?
  end
  
  def soma (vitoria)
	@local=vitoria
	@local.pontos = @local.pontos.to_i + 1
	if @local.save
	end

end

  def define ()
		@local=Micropost.find(1)
		if @local.pontos==0
		@local.pontos = 1
		else
		@local.pontos = @local.pontos+1
		end
		if @local.pontos==Candidato.count
		@local.pontos = 0
		end
		@local.save

	return @local.pontos
  end
  
  def infine ()
		@local=Micropost.find(2)
		if @local.pontos==0
		@local.pontos = Candidato.count
		else
		@local.pontos = @local.pontos-1
		end
		if @local.pontos==0
		@local.pontos = Candidato.count
		end
		@local.save

	return @local.pontos
  end


  
end
  
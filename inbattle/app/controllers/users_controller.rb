class UsersController < ApplicationController
  def new
  end
  
    def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end
  
end
class UsersController < ActionController::Base
  def index
  end

  def show
    @user = current_user
    @user = User.find(params[:id])
    @image = Image.all
  end

  private
  def user_params
    params.require(:user).permit(:photo)
  end
end

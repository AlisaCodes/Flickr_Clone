class ImagesController < ApplicationController
  def index
    @images = Image.all
    @user = User.find(params[:user_id])
  end

  def new
    @image = Image.new
    @user = User.find(params[:user_id])
  end

  def create
    @user = User.find(params[:user_id])
    @image = @user.images.new(image_params)
    if @image.save
      redirect_to user_images_path(current_user)
    else
      render :new
    end
  end

  private
  def image_params
    params.require(:image).permit(:title, :url, :photo)
  end
end

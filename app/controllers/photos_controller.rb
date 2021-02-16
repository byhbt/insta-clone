class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @photo = current_user.photos.build(photo_params)

    if @photo.save
      redirect_to photo_path(@photo.id), notice: "The image has uploaded succesfully."
    else
      render :new
    end
  end

  def show; end

  private

  def photo_params
    params.require(:photo).permit(:photo, :description)
  end
end

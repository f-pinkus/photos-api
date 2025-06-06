class PhotosController < ApplicationController
skip_before_action :verify_authenticity_token

  def index
    photos = Photo.all

    render json: photos
    end

  def create
    photo = Photo.create(
      name: params[:name],
      width: params[:width],
      height: params[:height],
    )

    render json: photo
  end

  def show
    photo = Photo.find(params[:id])

    render json: photo
  end

  def update
    photo = Photo.find(params[:id])

    photo.update(
      name: params[:name] || photo.name,
      width: params[:width] ||photo.width,
      height: params[:height] || photo.height
    )

    render json: photo
  end

  def destroy
    photo = Photo.find(params[:id])
    photo.destroy

    render json: {message: "photo deleted!"}
  end
end

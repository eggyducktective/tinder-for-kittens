class PhotosController < ApplicationController
  before_action :get_photo, only: %i[show]
  def new
  end

  def create
  end

  def show
  end

  def index
    @photos = Photo.all
  end

  def edit
  end

  def update
  end

  def destroy
    catid=get_photo.cat_id
    get_photo.destroy
    redirect_to cat_path(catid)
  end

  private

  def get_photo
    @photo = Photo.find params[:id]
  end
end

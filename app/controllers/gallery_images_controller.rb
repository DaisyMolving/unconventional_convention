class GalleryImagesController < ApplicationController

   def index
    @gallery_images = GalleryImage.all
    @gallery_image = GalleryImage.find(params[:id])
  end

  # GET
  def show
    @gallery_image = GalleryImage.find(params[:id])
    @gallery_images = GalleryImage.all

    respond_to do |format|
        format.html 
        format.json { render json: @gallery_images }
    end
  end

  private
  def mailing_list_params
    params.require(:gallery_image).permit(:asset, :image_caption)
  end

end

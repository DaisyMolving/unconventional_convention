class CommentsController < ApplicationController

    def index
    @comments = Comment.all
    @content = Content.find(3)
    @organisers = Organiser.all
    @gallery_images = GalleryImage.all
    respond_to do |format|
        format.html 
        format.json { render json: @comments }
  end

  # GET
  def show
    @comment = Comment.find(params[:id])
    @comments = Comment.all 

    end
  end

  # GET
  def new
    @comment = Comment.new
  end

  # POST 
  def create
    Comment.create(comment_params)
    redirect_to(root_path)
  end

    # GET
  def edit
    @comment = Comment.find(params[:id])
  end

    # PUT
  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to(comment_path)
  end


   # DELETE
  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to(root_path)
  end

 
 
private
  def comment_params
    params.require(:comment).permit(:guestname, :guestemail, :content)
  end



end



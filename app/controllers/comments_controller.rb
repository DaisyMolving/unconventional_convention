class CommentsController < ApplicationController

    def index
    @comments = Comment.all
    @about_us = Content.find(2).about_us
    @footnote = Content.find(2).footnote
  end

  # GET
  def show
    @comment = Comment.find(params[:id])
    @comments = Comment.all 

    respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @comments }
    end
  end

  # GET
  def new
    @comment = Comment.new
  end

  # POST 
  def create
    Comment.create(comment_params)
    redirect_to(comments_path)
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
    redirect_to(comments_path)
  end

 
 
private
  def comment_params
    params.require(:comment).permit(:guestname, :guestemail, :content)
  end



end



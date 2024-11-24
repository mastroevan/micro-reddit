class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = User.find(params[:user_id]) # Associate comment with a user
    @comment.post = Post.find(params[:post_id]) # Associate comment with a post
    if @comment.save
      redirect_to @comment.post, notice: "Comment added successfully."
    else
      render :new, alert: "Error adding comment."
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to @comment.post, notice: "Comment updated successfully."
    else
      render :edit, alert: "Error updating comment."
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @comment.post, notice: "Comment deleted successfully."
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end

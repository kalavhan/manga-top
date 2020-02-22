class CommentsController < ApplicationController
  def create
    @article_id = params[:article_id]
    params[:comments][:user_id] = current_user.id
    params[:comments][:article_id] = @article_id
    @comment = Comment.new(comment_params)
    article_id = params[:comments][:id]
    if @comment.save
      redirect_to read_article_path(:id => @article_id)
    else
      render "article?id=#{@article_id}"
    end
  end

  private

  def comment_params
    params.require(:comments).permit(:text, :user_id, :article_id)
  end
end

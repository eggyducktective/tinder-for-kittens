class CommentsController < ApplicationController
  before_action :check_if_logged_in, except: [:index, :show]
  before_action :get_comment, only: [:show, :edit, :update, :destroy]
  before_action :check_is_owner, only: [:edit, :update, :destroy]

  def new
    @comment = Comment.new
  end

  def create
  end

  def show
  end

  def index
    @comments = Comment.all
  end

  def edit
  end

  def update
    @comment.update comment_params
    redirect_to @comment
  end

  def destroy
    catid=get_comment.cat_id
    get_comment.destroy
    redirect_to cat_path(catid)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :cat_id)
  end

  def get_comment
    @comment = Comment.find params[:id]
  end

  def check_is_owner
    redirect_to(comments_path) and return unless @current_user.id == @comment.user_id
  end
end

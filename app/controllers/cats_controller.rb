class CatsController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show, :catsearch]
  before_action :get_cat, only: [:show, :edit, :update, :destroy] # will set @cat
  before_action :check_is_owner, only: [:edit, :update, :destroy]

  def new
    @cat = Cat.new
  end

  def create
    cat = Cat.new cat_params
    cat.user = @current_user
    cat.save

    params[:hobbies].each do |hobby_id|
      cat.hobbies <<  Hobby.find( hobby_id )
    end

    redirect_to cats_path

  end

  def show
  end

  def index
    @cats = Cat.all

  end

  def edit
  end

  def update
    @cat.update cat_params
    redirect_to @cat
  end

  def destroy
    @cat.destroy
    redirect_to cats_path
  end

  def catsearch
    search_word = params[:search].to_s
    kittysearch = Cat.ransack(name_or_bio_cont_any: search_word)
    @kittyresults = kittysearch.result

    render :results
  end

  def comment
    com = Comment.new
    com.content = params[:comment].to_s
    com.user_id = @current_user.id
    com.cat_id = params[:id].to_s
    com.save
    redirect_to cat_path(get_cat.id)
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :image, :bio)
  end

  def get_cat
    @cat = Cat.find params[:id]
  end

  def check_is_owner
    redirect_to(cats_path) and return unless @current_user.id == @cat.user_id
  end

end

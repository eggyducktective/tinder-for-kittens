class CatsController < ApplicationController
  before_action :check_if_logged_in, except: %i[index show catsearch]
  before_action :get_cat, only: %i[show edit update destroy] # will set @cat
  before_action :check_is_owner, only: %i[edit update destroy]

  def new
    @cat = Cat.new
  end

  def create
    cat = Cat.new cat_params
    cat.user = @current_user
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      cat.image = req['public_id']
    end

    cat.save

    params[:hobbies].each do |hobby_id|
      cat.hobbies << Hobby.find(hobby_id)
    end

    redirect_to cat_path(cat)
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def show
  end

  def index
    @cats = Cat.all
    @fact = random_cat_fact
  end


  def update

    cat = Cat.find(params[:id])
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])

      cat.image = req['public_id']
    end
    cat.update_attributes(cat_params)
    cat.save

    cat.hobbies.destroy_all
    params[:hobbies].each do |hobby_id|
      cat.hobbies << Hobby.find(hobby_id)
    end

    redirect_to(cat_path(cat))
  end

  def destroy
    @cat.destroy
    redirect_to cats_path
  end

  def catsearch

    @search_word = params[:search]

    if params[:hobby_ids].present?
      # filter an existing text search (see https://stackoverflow.com/a/37714789 for the join magic)
      @kittyresults = Cat.ransack(name_or_bio_cont_any: @search_word.split(" ")).result.joins(:cats_hobbies).where( cats_hobbies: { hobby_id: params[:hobby_ids] }  ).uniq

    else

      # perform new text search
      @kittyresults = Cat.ransack(name_or_bio_cont_any: @search_word.split(" ")).result
      # raise 'egg'

    end

    render :results
  end


  def update_kitty
    if params[:comment]
      com = Comment.new
      com.content = params[:comment].to_s
      com.user_id = @current_user.id
      com.cat_id = params[:id].to_s
      com.save
      redirect_to cat_path(get_cat.id)
    elsif params[:kittyimage]
      photo = Photo.new
      photo.cat_id = params[:id]
      req = Cloudinary::Uploader.upload(params[:kittyimage])
      photo.image = req['public_id']
      photo.save
      redirect_to cat_path(get_cat.id)
    end
  end


  def random_cat_fact
      url = "https://catfact.ninja/fact"
      result = HTTParty.get( url )
      result['fact']
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :bio, :image, :hobbies)
  end
  
  def get_cat
    @cat = Cat.find params[:id]
  end

  def check_is_owner
    redirect_to(cats_path) && return unless @current_user.id == @cat.user_id
  end
end

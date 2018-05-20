class CatsController < ApplicationController
  def new
  end

  def create
  end

  def show
  end

  def index
  end

  def edit
  end

  def update
  end

  def catsearch
    search_word = params[:search].to_s
    kittysearch = Cat.ransack(name_or_bio_cont_any: search_word)
    @kittyresults = kittysearch.result
    render :results
  end

  def destroy
  end
end

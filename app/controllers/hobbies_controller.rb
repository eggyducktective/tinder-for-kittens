class HobbiesController < ApplicationController

  def new
  end

  def create
  end

  def show
    @hobby = Hobby.find params[:id]
  end

  def index
    @hobbies = Hobby.all
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

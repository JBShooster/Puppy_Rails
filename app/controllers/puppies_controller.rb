class PuppiesController < ApplicationController
  def index
    @puppies = Puppy.all
  end

  def new
    @puppy = Puppy.new
  end

  def show
    @puppy = Puppy.get_by_id(:id)
  end

  def edit
    @puppy = Puppy.get_by_id(:id)
  end

  def create
    @puppy = Puppy.create author_params
    if @puppy.save
      redirect_to "/puppies"
    else
      render :new
    end
  end

  private
  def puppy_params
    params.require(:author).permit(:name)
  end
end

class KittensController < ApplicationController
  before_action :get_kitten, only: [:show, :edit, :destroy]

  def index
    @kittens = Kitten.all
    respond_to do |format|
      format.html
      format.json { render json: @kittens }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json { render json: @kitten }
    end
  end

  def new
    @kitten = Kitten.new
  end

  def edit
  end

  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      redirect_to @kitten, notice: 'Kitten created successfully.'
    else
      render :new, notice: 'Something went wrong.'
    end
  end

  def update
    @kitten = Kitten.find(params[:id])
    @kitten.update(kitten_params)
    if @kitten.save
      redirect_to @kitten, notice: 'Kitten updated successfully.'
    else
      render :edit, notice: 'Something went wrong.'
    end
  end

  def destroy
    if @kitten.destroy
      redirect_to kittens_url, notice: 'Kitten destroyed. How could you?!'
    else
      redirect_to kittens_url, notice: 'Kitten not found in database.'
    end
  end

  private

  def get_kitten
    @kitten = Kitten.find(params[:id])
  end

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
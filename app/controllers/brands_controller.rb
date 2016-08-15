class BrandsController < ApplicationController

  def index
    @brands = Brand.all
  end

  def show
    @brand = Brand.find(params[:id])
  end

  def new
    @brand = Brand.new
  end

  def edit
    @brand = Brand.find(params[:id])
  end

  def update
    @brand = Brand.find(params[:id])
    if(@brand.update(params.require(:brand).permit(:name, :country)))
      redirect_to @brand
    else
      render 'edit'
    end
  end

  def create
    @brand = Brand.new(params.require(:brand).permit(:name, :country))
    if @brand.save
      redirect_to @brand
    else
      render 'new'
    end
  end

  def destroy
    @brand = Brand.find(params[:id])
    @brand.destroy

    redirect_to brands_path
  end
end

class ModelsController < ApplicationController

  def create
    @brand = Brand.find(params[:brand_id])
    @model = @brand.models.create(params.require(:model).permit(:name))
    redirect_to brand_path(@brand)
  end

  def destroy
    @brand = Brand.find(params[:brand_id])
    @model = @brand.models.find(params[:id])
    @model.destroy
    redirect_to brand_path(@brand)
  end
end

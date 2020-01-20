class MaterialsController < ApplicationController
  def index
    @material = Material.new
    @materials = Material.all
  end

  def new
  end

  def create
    Material.create(material_params)
    redirect_to "/"
  end


  private
  def material_params
    params.require(:material).permit(:name)
  end
end

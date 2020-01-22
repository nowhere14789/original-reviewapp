class MaterialsController < ApplicationController
  def index
    @material = Material.new
    @materials = Material.all
    @time = Date.today
    @time_I = @time.ago(1.days)
    @time_II = @time.ago(7.days)
    @time_III = @time.ago(28.days)
    @notes = Note.all
    @reviews = Note.where(created_at:@time_I.in_time_zone.all_day)
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

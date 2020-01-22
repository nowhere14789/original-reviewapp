class NotesController < ApplicationController
before_action :set_material

  def index
    @material = Material.new
    @materials = Material.all
    @note = Note.new
    # @notes
  end

  def create
    Note.create(note_params)
  end


  private

  def note_params
    params.require(:note).permit(:title,:content).merge(material_id: params[:material_id])
  end

  def set_material
    @material_id = Material.find(params[:material_id])
  end
end

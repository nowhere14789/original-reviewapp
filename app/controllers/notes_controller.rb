class NotesController < ApplicationController
  def index
    @material = Material.new
    @materials = Material.all
  end

  def create
  end

end

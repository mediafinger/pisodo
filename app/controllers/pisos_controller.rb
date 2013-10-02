class PisosController < ApplicationController
  before_action :set_piso, only: [:show, :edit, :update, :destroy]

  # GET /pisos
  def index
    @pisos = Piso.all
  end

  # GET /pisos/1
  def show
  end

  # GET /pisos/new
  def new
    @piso = Piso.new
  end

  # GET /pisos/1/edit
  def edit
  end

  # POST /pisos
  def create
    @piso = Piso.new(piso_params)

    if @piso.save
      redirect_to @piso, notice: 'Piso was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /pisos/1
  def update
    if @piso.update(piso_params)
      redirect_to @piso, notice: 'Piso was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /pisos/1
  def destroy
    @piso.destroy
    redirect_to pisos_url, notice: 'Piso was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piso
      @piso = Piso.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def piso_params
      params.require(:piso).permit(:name, :found, :url, :price, :bond, :broker_fee, :square_meter, :number_of_bedrooms, :size_of_living_room, :size_of_largest_bedroom, :type_of_kitchen, :size_of_balcony, :balcony_to_patio, :bedroom_to_patio, :floor, :elevator, :type_of_street, :number_of_bathrooms, :bathtub, :suited_to_share, :distance_to_metro, :picture_one, :picture_two, :maps, :space_for_bike, :sunny, :quiet, :closets, :washing_machine, :dishwasher, :equipped_kitchen, :furnished, :comments, :status, :fon, :contact, :first_noticed, :visited, :heating, :air_conditioning, :wooden_floor, :double_glazing, :area, :distance_to_work, :distance_to_beach, :distance_to_park)
    end
end

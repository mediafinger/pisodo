class PisosController < ApplicationController
  before_action :set_piso, only: [:show, :edit, :update, :destroy]

  # GET /pisos
  def index
    @pisos = Piso.limit(100).order(:created_at)
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
      redirect_to "edit", notice: 'Piso was successfully updated.'
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

  def set_piso
    @piso = Piso.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def piso_params
    params.require(:piso).permit(
      :air_conditioning,
      :area,
      :balcony_to_patio,
      :bathtub,
      :bedroom_to_patio,
      :bond,
      :broker_fee,
      :closets,
      :comments,
      :contact,
      :dishwasher,
      :distance_to_beach,
      :distance_to_metro,
      :distance_to_park,
      :distance_to_work,
      :double_glazing,
      :elevator,
      :equipped_kitchen,
      :floor,
      :fon,
      :found,
      :furnished,
      :heating,
      :maps,
      :name,
      :noticed_at,
      :number_of_bathrooms,
      :number_of_bedrooms,
      :pet_friendly,
      :picture_one,
      :picture_two,
      :price,
      :quiet,
      :size_of_balcony,
      :size_of_largest_bedroom,
      :size_of_living_room,
      :space_for_bike,
      :square_meter,
      :status,
      :suited_to_share,
      :sunny,
      :type_of_kitchen,
      :type_of_street,
      :url,
      :visited,
      :vistited_at,
      :washing_machine,
      :wooden_floor
    )
  end
end

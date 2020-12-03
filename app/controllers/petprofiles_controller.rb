class PetprofilesController < ApplicationController
  before_action :set_petprofile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  # GET /petprofiles
  # GET /petprofiles.json
  def index
    @petprofiles = Petprofile.all
  end

  # GET /petprofiles/1
  # GET /petprofiles/1.json
  def show

    @favoritepet_exists = Favoritepet.where(petprofile: @petprofile, user: current_user) == [] ? false : true
  end

  # GET /petprofiles/new
  def new
    @petprofile = Petprofile.new
  end

  # GET /petprofiles/1/edit
  def edit
  end

  # POST /petprofiles
  # POST /petprofiles.json
  def create

    @petprofile = Petprofile.new(petprofile_params)
    @petprofile.category = Category.find(params[:petprofile][:category_id])
    @petprofile.gender = Gender.find(params[:petprofile][:gender_id])
    @petprofile.user = current_user 
    respond_to do |format|
      if @petprofile.save
        format.html { redirect_to @petprofile, notice: 'Petprofile was successfully created.' }
        format.json { render :show, status: :created, location: @petprofile }
      else
        format.html { render :new }
        format.json { render json: @petprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /petprofiles/1
  # PATCH/PUT /petprofiles/1.json
  def update
    @petprofile.category = Category.find(params[:petprofile][:category_id])
    @petprofile.gender = Gender.find(params[:petprofile][:gender_id])
    respond_to do |format|
      if @petprofile.update(petprofile_params)
        format.html { redirect_to @petprofile, notice: 'Petprofile was successfully updated.' }
        format.json { render :show, status: :ok, location: @petprofile }
      else
        format.html { render :edit }
        format.json { render json: @petprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /petprofiles/1
  # DELETE /petprofiles/1.json
  def destroy
    @petprofile.destroy
    respond_to do |format|
      format.html { redirect_to petprofiles_url, notice: 'Petprofile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_petprofile
      @petprofile = Petprofile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def petprofile_params
      params.require(:petprofile).permit(:image, :name, :category_id, :gender_id, :breed,
         :DOB, :pedigree, :vaccinated, :microchipped, :available, :about,)
    end
end

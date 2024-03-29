class MatieresController < ApplicationController
  before_action :set_matiere, only: [:show, :edit, :update, :destroy]

  # GET /matieres
  # GET /matieres.json
  def index
    @matieres = Matiere.all
  end

  # GET /matieres/1
  # GET /matieres/1.json
  def show
  end

  # GET /matieres/new
  def new
    @matiere = Matiere.new
  end

  # GET /matieres/1/edit
  def edit
  end

  # POST /matieres
  # POST /matieres.json
  def create
    @matiere = Matiere.new(matiere_params)

    respond_to do |format|
      if @matiere.save
        format.html { redirect_to @matiere, notice: 'Matiere was successfully created.' }
        format.json { render :show, status: :created, location: @matiere }
      else
        format.html { render :new }
        format.json { render json: @matiere.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matieres/1
  # PATCH/PUT /matieres/1.json
  def update
    respond_to do |format|
      if @matiere.update(matiere_params)
        format.html { redirect_to @matiere, notice: 'Matiere was successfully updated.' }
        format.json { render :show, status: :ok, location: @matiere }
      else
        format.html { render :edit }
        format.json { render json: @matiere.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matieres/1
  # DELETE /matieres/1.json
  def destroy
    @matiere.destroy
    respond_to do |format|
      format.html { redirect_to matieres_url, notice: 'Matiere was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matiere
      @matiere = Matiere.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matiere_params
      params.require(:matiere).permit(:lib_mat)
    end
end

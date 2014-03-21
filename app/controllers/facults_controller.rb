class FacultsController < ApplicationController
  before_action :set_facult, only: [:show, :edit, :update, :destroy]

  # GET /facults
  # GET /facults.json
  def index
    @facults = Facult.all
  end

  # GET /facults/1
  # GET /facults/1.json
  def show
  end

  # GET /facults/new
  def new
    @facult = Facult.new
  end

  # GET /facults/1/edit
  def edit
  end

  # POST /facults
  # POST /facults.json
  def create
    @facult = Facult.new(facult_params)

    respond_to do |format|
      if @facult.save
        format.html { redirect_to @facult, notice: 'Facult was successfully created.' }
        format.json { render action: 'show', status: :created, location: @facult }
      else
        format.html { render action: 'new' }
        format.json { render json: @facult.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facults/1
  # PATCH/PUT /facults/1.json
  def update
    respond_to do |format|
      if @facult.update(facult_params)
        format.html { redirect_to @facult, notice: 'Facult was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @facult.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facults/1
  # DELETE /facults/1.json
  def destroy
    @facult.destroy
    respond_to do |format|
      format.html { redirect_to facults_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facult
      @facult = Facult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def facult_params
      params.require(:facult).permit(:name, :logo, :info)
    end
end

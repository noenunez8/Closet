class AccountannotationsController < ApplicationController
  before_action :set_accountannotation, only: %i[ show edit update destroy ]
  before_action :authenticate_user!


  # GET /accountannotations or /accountannotations.json
  def index
    @accountannotations = Accountannotation.all
  end

  # GET /accountannotations/1 or /accountannotations/1.json
  def show
  end

  # GET /accountannotations/new
  def new
    @accountannotation = Accountannotation.new
  end

  # GET /accountannotations/1/edit
  def edit
  end

  # POST /accountannotations or /accountannotations.json
  def create
    @accountannotation = Accountannotation.new(accountannotation_params)

    respond_to do |format|
      if @accountannotation.save
        format.html { redirect_to @accountannotation, notice: "Accountannotation was successfully created." }
        format.json { render :show, status: :created, location: @accountannotation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @accountannotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accountannotations/1 or /accountannotations/1.json
  def update
    respond_to do |format|
      if @accountannotation.update(accountannotation_params)
        format.html { redirect_to @accountannotation, notice: "Accountannotation was successfully updated." }
        format.json { render :show, status: :ok, location: @accountannotation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @accountannotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accountannotations/1 or /accountannotations/1.json
  def destroy
    @accountannotation.destroy
    respond_to do |format|
      format.html { redirect_to accountannotations_url, notice: "Accountannotation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accountannotation
      @accountannotation = Accountannotation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def accountannotation_params
      params.require(:accountannotation).permit(:annotation_id, :account_id)
    end
end

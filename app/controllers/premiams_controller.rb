class PremiamsController < ApplicationController
  before_action :set_premiam, only: [:show, :edit, :update, :destroy]

  # GET /premiams
  # GET /premiams.json
  def index
    @q = Premiam.ransack(params[:q])
    @premiams = @q.result(distinct: true)
  end

  # GET /premiams/1
  # GET /premiams/1.json
  def show
  end

  # GET /premiams/new
  def new
    @premiam = Premiam.new
  end

  # GET /premiams/1/edit
  def edit
  end

  # POST /premiams
  # POST /premiams.json
  def create
    @premiam = Premiam.new(premiam_params)

    respond_to do |format|
      if @premiam.save
        format.haml { redirect_to @premiam, notice: 'Premiam was successfully created.' }
        format.json { render :show, status: :created, location: @premiam }
      else
        format.html { render :new }
        format.json { render json: @premiam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /premiams/1
  # PATCH/PUT /premiams/1.json
  def update
    respond_to do |format|
      if @premiam.update(premiam_params)
        format.haml { redirect_to @premiam, notice: 'Premiam was successfully updated.' }
        format.json { render :show, status: :ok, location: @premiam }
      else
        format.haml { render :edit }
        format.json { render json: @premiam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /premiams/1
  # DELETE /premiams/1.json
  def destroy
    @premiam.destroy
    respond_to do |format|
      format.html { redirect_to premiams_url, notice: 'Premiam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_premiam
      @premiam = Premiam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def premiam_params
      params.require(:premiam).permit(:name, :age, :sex, :plan, :fee, :company)
    end
end

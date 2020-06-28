class ChangeImplementationsController < ApplicationController
  before_action :set_change_implementation, only: [:show, :edit, :update, :destroy]

  # GET /change_implementations
  # GET /change_implementations.json
  def index
    @change_implementations = ChangeImplementation.all
    @nav_title = "Change Implementations"
  end

  # GET /change_implementations/1
  # GET /change_implementations/1.json
  def show
    @nav_title = "Change Implementations"
  end

  # GET /change_implementations/new
  def new
    @nav_title = "Change Implementations"
    @change_implementation = ChangeImplementation.new
  end

  # GET /change_implementations/1/edit
  def edit
    @nav_title = "Change Implementations"
  end

  # POST /change_implementations
  # POST /change_implementations.json
  def create
    @change_implementation = ChangeImplementation.new(change_implementation_params)

    respond_to do |format|
      if @change_implementation.save
        format.html { redirect_to @change_implementation, notice: 'Change implementation was successfully created.' }
        format.json { render :show, status: :created, location: @change_implementation }
      else
        format.html { render :new }
        format.json { render json: @change_implementation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /change_implementations/1
  # PATCH/PUT /change_implementations/1.json
  def update
    respond_to do |format|
      if @change_implementation.update(change_implementation_params)
        format.html { redirect_to @change_implementation, notice: 'Change implementation was successfully updated.' }
        format.json { render :show, status: :ok, location: @change_implementation }
      else
        format.html { render :edit }
        format.json { render json: @change_implementation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /change_implementations/1
  # DELETE /change_implementations/1.json
  def destroy
    @change_implementation.destroy
    respond_to do |format|
      format.html { redirect_to change_implementations_url, notice: 'Change implementation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_change_implementation
      @change_implementation = ChangeImplementation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def change_implementation_params
      params.require(:change_implementation).permit(:staging_results, :implementation_results, :implementation_date, :sign_off)
    end
end

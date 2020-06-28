class ChangeImpactsController < ApplicationController
  before_action :set_change_impact, only: [:show, :edit, :update, :destroy]

  # GET /change_impacts
  # GET /change_impacts.json
  def index
    @change_impacts = ChangeImpact.all
    @nav_title = "Change Impacts"
  end

  # GET /change_impacts/1
  # GET /change_impacts/1.json
  def show
    @nav_title = "Change Impacts"
  end

  # GET /change_impacts/new
  def new
    @change_impact = ChangeImpact.new
    @nav_title = "Change Impacts"
  end

  # GET /change_impacts/1/edit
  def edit
    @nav_title = "Change Impacts"
  end

  # POST /change_impacts
  # POST /change_impacts.json
  def create
    @change_impact = ChangeImpact.new(change_impact_params)

    respond_to do |format|
      if @change_impact.save
        format.html { redirect_to @change_impact, notice: 'Change impact was successfully created.' }
        format.json { render :show, status: :created, location: @change_impact }
      else
        format.html { render :new }
        format.json { render json: @change_impact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /change_impacts/1
  # PATCH/PUT /change_impacts/1.json
  def update
    # Special saving for funfairs
    
    @types = []
    params[:type][:type_ids].each do |gameid|
        @types << {:change_impact_id => @change_impact.id, :type_id=> gameid}
        puts gameid
        if(gameid != nil && gameid != '' )
          @change_impact.change_types.build([{:type_id => gameid, :change_impact_id => @change_impact.id}])
          @change_impact.save
        end
    end    
    
    respond_to do |format|
      if @change_impact.update(change_impact_params)
        format.html { redirect_to @change_impact, notice: 'Change impact was successfully updated.' }
        format.json { render :show, status: :ok, location: @change_impact }
      else
        format.html { render :edit }
        format.json { render json: @change_impact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /change_impacts/1
  # DELETE /change_impacts/1.json
  def destroy
    @change_impact.destroy
    respond_to do |format|
      format.html { redirect_to change_impacts_url, notice: 'Change impact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_change_impact
      @change_impact = ChangeImpact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def change_impact_params
      params.require(:change_impact).permit(:type, :priority, :impact, :environment_impacted, :resource_requirements, :test_plan, :roll_back)
    end
end

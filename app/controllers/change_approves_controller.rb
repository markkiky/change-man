class ChangeApprovesController < ApplicationController
  before_action :set_change_approve, only: [:show, :edit, :update, :destroy]

  # GET /change_approves
  # GET /change_approves.json
  def index
    @change_approves = ChangeApprove.all
    @change_requests = ChangeRequest.all
    @nav_title = "Change Approvals"
  end

  # GET /change_approves/1
  # GET /change_approves/1.json
  def show
    
    @nav_title = "Change Approvals"
  end

  # GET /change_approves/new
  def new
    @nav_title = "Change Approvals"
    @change_approve = ChangeApprove.new
  end

  # GET /change_approves/1/edit
  def edit
    @nav_title = "Change Approvals"
  end

  # POST /change_approves
  # POST /change_approves.json
  def create
    @change_approve = ChangeApprove.new(change_approve_params)

    respond_to do |format|
      if @change_approve.save
        format.html { redirect_to @change_approve, notice: 'Change approve was successfully created.' }
        format.json { render :show, status: :created, location: @change_approve }
      else
        format.html { render :new }
        format.json { render json: @change_approve.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /change_approves/1
  # PATCH/PUT /change_approves/1.json
  def update
    if params[:change_approve][:status] == "1"
      @change_approve.status = true
      @change_request = ChangeRequest.find(@change_approve.id)
      @change_request.approval = "approved"
      @change_request.save!
    else
      @change_approve.status = false
      @change_request = ChangeRequest.find(@change_approve.id)
      @change_request.approval = "declined"
      @change_request.save!
    end
    
    respond_to do |format|
      if @change_approve.update(change_approve_params)
        format.html { redirect_to @change_approve, notice: 'Change approve was successfully updated.' }
        format.json { render :show, status: :ok, location: @change_approve }
      else
        format.html { render :edit }
        format.json { render json: @change_approve.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /change_approves/1
  # DELETE /change_approves/1.json
  def destroy
    @change_approve.destroy
    respond_to do |format|
      format.html { redirect_to change_approves_url, notice: 'Change approve was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_change_approve
      @change_approve = ChangeApprove.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def change_approve_params
      params.require(:change_approve).permit(:status, :comments, :scheduled_date, :assigned_to, :sign_off)
    end
end

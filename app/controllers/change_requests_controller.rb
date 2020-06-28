class ChangeRequestsController < ApplicationController
  before_action :set_change_request, only: [:show, :edit, :update, :destroy]

  # GET /change_requests
  # GET /change_requests.json
  def index
    @change_requests = ChangeRequest.all

    @nav_title = "Change Requests"
  end

  # GET /change_requests/1
  # GET /change_requests/1.json
  def show
    @nav_title = "Change Requests"
    @department = Department.find(@change_request.department).name
    @request_no = @change_request.id
    if User.find_by_id(@change_request.requested_by) == nil
      @requested_by = "user not found" 
    else
       @requested_by = User.find_by_id(@change_request.requested_by).email 
    end
   
    puts @change_request.requested_by
    @approval = @change_request.approval
  end

  # GET /change_requests/new
  def new
    @change_request = ChangeRequest.new
    @nav_title = "Change Requests"
  end

  # GET /change_requests/1/edit
  def edit
    @nav_title = "Change Requests"
  end

  # POST /change_requests
  # POST /change_requests.json
  def create
    @change_request = ChangeRequest.new(change_request_params)
    @change_request.approval = "pending"
    @change_request.requested_by = current_user.id

    respond_to do |format|
      if @change_request.save
        @change_request.create_volumes(@change_request)
        format.html { redirect_to @change_request, notice: 'Change request was successfully created.' }
        format.json { render :show, status: :created, location: @change_request }
      else
        format.html { render :new }
        format.json { render json: @change_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /change_requests/1
  # PATCH/PUT /change_requests/1.json
  def update
    respond_to do |format|
      if @change_request.update(change_request_params)
        format.html { redirect_to @change_request, notice: 'Change request was successfully updated.' }
        format.json { render :show, status: :ok, location: @change_request }
      else
        format.html { render :edit }
        format.json { render json: @change_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /change_requests/1
  # DELETE /change_requests/1.json
  def destroy
    @change_request.destroy
    respond_to do |format|
      format.html { redirect_to change_requests_url, notice: 'Change request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_change_request
      @change_request = ChangeRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def change_request_params
      params.require(:change_request).permit(:request_no, :project, :requested_by, :department, :telephone, :description, :required_date, :reason, :sign_off, :approval)
    end
end

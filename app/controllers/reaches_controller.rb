class ReachesController < ApplicationController
  before_action :set_reach, only: [:show, :edit, :update, :destroy]

  # GET /reaches
  # GET /reaches.json
  def index
    @reaches = Reach.all
  end

  # GET /reaches/1
  # GET /reaches/1.json
  def show
  end

  # GET /reaches/new
  def new
    @reach = Reach.new
  end

  # GET /reaches/1/edit
  def edit
  end

  # POST /reaches
  # POST /reaches.json
  def create
    @reach = Reach.new(reach_params)

    respond_to do |format|
      if @reach.save
        format.html { redirect_to @reach, notice: 'Reach was successfully created.' }
        format.json { render :show, status: :created, location: @reach }
      else
        format.html { render :new }
        format.json { render json: @reach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reaches/1
  # PATCH/PUT /reaches/1.json
  def update
    respond_to do |format|
      if @reach.update(reach_params)
        format.html { redirect_to @reach, notice: 'Reach was successfully updated.' }
        format.json { render :show, status: :ok, location: @reach }
      else
        format.html { render :edit }
        format.json { render json: @reach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reaches/1
  # DELETE /reaches/1.json
  def destroy
    @reach.destroy
    respond_to do |format|
      format.html { redirect_to reaches_url, notice: 'Reach was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reach
      @reach = Reach.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reach_params
    if params[:reach][:websitepurpose] != nil
       params[:reach][:websitepurpose] = params[:reach][:websitepurpose].join(',')
    end
    if params[:reach][:objectiveachieve] != nil
       params[:reach][:objectiveachieve] = params[:reach][:objectiveachieve].join(',')
    end
      params.require(:reach).permit(:whatyouwant, :howlongrun, :triedonline, :everspentmoney, :runningwebsite, :websitepurpose, :objectiveachieve, :investatleast, :name, :phonenumber, :whatsappnumber, :email)
    end
end

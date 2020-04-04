class StoreListsController < ApplicationController
  before_action :set_store_list, only: [:show, :edit, :update, :destroy]

  # GET /store_lists
  # GET /store_lists.json
  def index
    @store_lists = StoreList.all
  end

  # GET /store_lists/1
  # GET /store_lists/1.json
  def show
  end

  # GET /store_lists/new
  def new
    @store_list = StoreList.new
  end

  # GET /store_lists/1/edit
  def edit
  end

  # POST /store_lists
  # POST /store_lists.json
  def create
    @store_list = StoreList.new(store_list_params)

    respond_to do |format|
      if @store_list.save
        format.html { redirect_to @store_list, notice: 'Store list was successfully created.' }
        format.json { render :show, status: :created, location: @store_list }
      else
        format.html { render :new }
        format.json { render json: @store_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_lists/1
  # PATCH/PUT /store_lists/1.json
  def update
    respond_to do |format|
      if @store_list.update(store_list_params)
        format.html { redirect_to @store_list, notice: 'Store list was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_list }
      else
        format.html { render :edit }
        format.json { render json: @store_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_lists/1
  # DELETE /store_lists/1.json
  def destroy
    @store_list.destroy
    respond_to do |format|
      format.html { redirect_to store_lists_url, notice: 'Store list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_list
      @store_list = StoreList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def store_list_params
      params.require(:store_list).permit(:name, :open, :employees)
    end
end

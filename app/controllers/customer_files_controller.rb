class CustomerFilesController < ApplicationController
  # GET /customer_files
  # GET /customer_files.json
  def index
    @customer_files = CustomerFile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customer_files }
    end
  end

  # GET /customer_files/1
  # GET /customer_files/1.json
  def show
    @customer_file = CustomerFile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer_file }
    end
  end

  # GET /customer_files/new
  # GET /customer_files/new.json
  def new
    @customer_file = CustomerFile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer_file }
    end
  end

  # GET /customer_files/1/edit
  def edit
    @customer_file = CustomerFile.find(params[:id])
  end

  # POST /customer_files
  # POST /customer_files.json
  def create
    @customer_file = CustomerFile.new(params[:customer_file])

    respond_to do |format|
      if @customer_file.save
        format.html { redirect_to @customer_file, notice: 'Customer file was successfully created.' }
        format.json { render json: @customer_file, status: :created, location: @customer_file }
      else
        format.html { render action: "new" }
        format.json { render json: @customer_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customer_files/1
  # PUT /customer_files/1.json
  def update
    @customer_file = CustomerFile.find(params[:id])

    respond_to do |format|
      if @customer_file.update_attributes(params[:customer_file])
        format.html { redirect_to @customer_file, notice: 'Customer file was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_files/1
  # DELETE /customer_files/1.json
  def destroy
    @customer_file = CustomerFile.find(params[:id])
    @customer_file.destroy

    respond_to do |format|
      format.html { redirect_to customer_files_url }
      format.json { head :no_content }
    end
  end
end
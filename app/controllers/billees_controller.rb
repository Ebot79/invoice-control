class BilleesController < ApplicationController
  # GET /billees
  # GET /billees.json
  def index
    @billees = Billee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @billees }
    end
  end

  # GET /billees/1
  # GET /billees/1.json
  def show
    @billee = Billee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @billee }
    end
  end

  # GET /billees/new
  # GET /billees/new.json
  def new
    @billee = Billee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @billee }
    end
  end

  # GET /billees/1/edit
  def edit
    @billee = Billee.find(params[:id])
  end

  # POST /billees
  # POST /billees.json
  def create
    @billee = Billee.new(params[:billee])

    respond_to do |format|
      if @billee.save
        format.html { redirect_to @billee, notice: 'Billee was successfully created.' }
        format.json { render json: @billee, status: :created, location: @billee }
      else
        format.html { render action: "new" }
        format.json { render json: @billee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /billees/1
  # PUT /billees/1.json
  def update
    @billee = Billee.find(params[:id])

    respond_to do |format|
      if @billee.update_attributes(params[:billee])
        format.html { redirect_to @billee, notice: 'Billee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @billee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /billees/1
  # DELETE /billees/1.json
  def destroy
    @billee = Billee.find(params[:id])
    @billee.destroy

    respond_to do |format|
      format.html { redirect_to billees_url }
      format.json { head :no_content }
    end
  end
end

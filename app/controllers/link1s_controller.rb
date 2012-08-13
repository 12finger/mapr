class Link1sController < ApplicationController
  # GET /link1s
  # GET /link1s.json
  def index
    @link1s = Link1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @link1s }
    end
  end

  # GET /link1s/1
  # GET /link1s/1.json
  def show
    @link1 = Link1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @link1 }
    end
  end

  # GET /link1s/new
  # GET /link1s/new.json
  def new
    @link1 = Link1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @link1 }
    end
  end

  # GET /link1s/1/edit
  def edit
    @link1 = Link1.find(params[:id])
  end

  # POST /link1s
  # POST /link1s.json
  def create
    @link1 = Link1.new(params[:link1])

    respond_to do |format|
      if @link1.save
        format.html { redirect_to @link1, notice: 'Link1 was successfully created.' }
        format.json { render json: @link1, status: :created, location: @link1 }
      else
        format.html { render action: "new" }
        format.json { render json: @link1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /link1s/1
  # PUT /link1s/1.json
  def update
    @link1 = Link1.find(params[:id])

    respond_to do |format|
      if @link1.update_attributes(params[:link1])
        format.html { redirect_to @link1, notice: 'Link1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @link1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /link1s/1
  # DELETE /link1s/1.json
  def destroy
    @link1 = Link1.find(params[:id])
    @link1.destroy

    respond_to do |format|
      format.html { redirect_to link1s_url }
      format.json { head :no_content }
    end
  end
end

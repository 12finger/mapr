class ContactLinkScategoriesController < ApplicationController
  # GET /contact_link_scategories
  # GET /contact_link_scategories.json
  def index
    @contact_link_scategories = ContactLinkScategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contact_link_scategories }
    end
  end

  # GET /contact_link_scategories/1
  # GET /contact_link_scategories/1.json
  def show
    @contact_link_scategory = ContactLinkScategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contact_link_scategory }
    end
  end

  # GET /contact_link_scategories/new
  # GET /contact_link_scategories/new.json
  def new
    @contact_link_scategory = ContactLinkScategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact_link_scategory }
    end
  end

  # GET /contact_link_scategories/1/edit
  def edit
    @contact_link_scategory = ContactLinkScategory.find(params[:id])
  end

  # POST /contact_link_scategories
  # POST /contact_link_scategories.json
  def create
    @contact_link_scategory = ContactLinkScategory.new(params[:contact_link_scategory])

    respond_to do |format|
      if @contact_link_scategory.save
        format.html { redirect_to @contact_link_scategory, notice: 'Contact link scategory was successfully created.' }
        format.json { render json: @contact_link_scategory, status: :created, location: @contact_link_scategory }
      else
        format.html { render action: "new" }
        format.json { render json: @contact_link_scategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contact_link_scategories/1
  # PUT /contact_link_scategories/1.json
  def update
    @contact_link_scategory = ContactLinkScategory.find(params[:id])

    respond_to do |format|
      if @contact_link_scategory.update_attributes(params[:contact_link_scategory])
        format.html { redirect_to @contact_link_scategory, notice: 'Contact link scategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contact_link_scategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_link_scategories/1
  # DELETE /contact_link_scategories/1.json
  def destroy
    @contact_link_scategory = ContactLinkScategory.find(params[:id])
    @contact_link_scategory.destroy

    respond_to do |format|
      format.html { redirect_to contact_link_scategories_url }
      format.json { head :no_content }
    end
  end
end

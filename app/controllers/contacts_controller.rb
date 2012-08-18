
class ContactsController < ApplicationController
  # GET /contacts
  # GET /contacts.json

  def map

    @allmarkersjson = Contact.where("isActive = 1").to_gmaps4rails do | event, marker|
      # prerequisites
      @startDate,@startTime,@startDateMonth,@startDateDigit = ""
      @haveStart = false
      unless (!event.startDate)
        @haveStart        = true
        startDateTimeHash = event.startDate.to_formatted_s(:short).split(" ")
        @startDate        = startDateTimeHash[0].to_i.to_s + " " + startDateTimeHash[1]              
        @startDateDigit   = startDateTimeHash[0].to_i.to_s
        @startDateMonth   = startDateTimeHash[1]
        @startTime        = startDateTimeHash[2]
      end
      @endDate,@endTime,@endDateMonth,@endDateDigit = ""
      @haveEnd = false
      unless (!event.endDate)
        @haveEnd          = true
        endDateTimeHash   = event.endDate.to_formatted_s(:short).split(" ")
        @endDate          = endDateTimeHash[0].to_i.to_s + " " + endDateTimeHash[1] 
        @endDateDigit     = endDateTimeHash[0].to_i.to_s
        @endDateMonth     = endDateTimeHash[1]
        @endTime          = endDateTimeHash[2]        
      end
      @sameMonth = false       
      @sameMonth = ( @startDateMonth == @endDateMonth )

      #marker.infowindow  "#{event.name} </br> #{event.categories.collect{|u| u.name}.join(', ')} </br> #{event.address}"
      ### maybe use a partial here for better MVC separation, but for now above solution suffice
      @eid = event.id
      marker.infowindow render_to_string(:partial => "/contacts/infowindow", :locals => { :object => @contact})
      marker.title   event.name
      marker.sidebar "#{event.name}" #{}"i'm the sidebar"
      marker.json({ :id => event.id, 
                    :vcounter => "0", 
                    :cat => event.categories.collect{|u| u.id}.join(','), 
                    #:sDate => event.startDate.to_formatted_s(:short), 
                    :sDate => @startDate,
                    :eDate => @endDate,
                    :sTime => @startTime,
                    :eTime => @endTime
      })
      ### TODO: logic for individual marker pic
       marker.picture ({
          "picture" => "/images/MarkerPink.png",
          "width" => 32,
          "height" => 32,
          # "marker_anchor" => [ 5, 10],
          # "shadow_picture" => "/images/morgan.png" ,
          # "shadow_width" => "110",
          # "shadow_height" => "110",
          # "shadow_anchor" => [5, 10],
         }) 
    end
  end

  def gmaps4rails_sidebar
    #huhuhuh #put whatever you want here
  end

  def index
    @contacts = Contact.all
    #@contacts = Contact.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contacts }
    end
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    @contact = Contact.find(params[:id])
    @json_single = @contact.to_gmaps4rails

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contact }
    end
  end

  # GET /contacts/new
  # GET /contacts/new.json
  def new
    @contact = Contact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact }
    end
  end

  # GET /contacts/1/edit
  def edit
    @contact = Contact.find(params[:id])
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(params[:contact])

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
        format.json { render json: @contact, status: :created, location: @contact }
      else
        format.html { render action: "new" }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contacts/1
  # PUT /contacts/1.json
  def update
    @contact = Contact.find(params[:id])

    respond_to do |format|
      if @contact.update_attributes(params[:contact])
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy

    respond_to do |format|
      format.html { redirect_to contacts_url }
      format.json { head :no_content }
    end
  end
end

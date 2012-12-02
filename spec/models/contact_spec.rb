require "spec_helper"

describe Contact do

  it "should return a Contact instance" do
    t = Contact.new
    t.should be_an_instance_of(Contact)
  end 

  it "should respond to name" do
    t = Contact.new
    t.should respond_to(:name)
  end   
     
  it "should return a blank instance" do
    t = Contact.new
    t.name.should be_blank
    t.address.should be_blank
    t.created_at.should be_blank
    t.updated_at.should be_blank
    t.latitude.should be_blank
    t.longitude.should be_blank
    t.gmaps.should be_blank
    t.startDate.should be_blank
    t.endDate.should be_blank
    t.isActive.should be_blank
    t.wwwLink.should be_blank
  end     

#  it "should get the initial name Ash" do
#    t = Contact.new
#    t.name.should == "Ash"
#  end 

end
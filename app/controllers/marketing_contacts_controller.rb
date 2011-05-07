class MarketingContactsController < ApplicationController
  # GET /marketing_contacts
  # GET /marketing_contacts.xml
  def index
    @marketing_contacts = MarketingContact.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @marketing_contacts }
    end
  end

  # GET /marketing_contacts/1
  # GET /marketing_contacts/1.xml
  def show
    @marketing_contact = MarketingContact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @marketing_contact }
    end
  end

  # GET /marketing_contacts/new
  # GET /marketing_contacts/new.xml
  def new
    @marketing_contact = MarketingContact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @marketing_contact }
    end
  end

  # GET /marketing_contacts/1/edit
  def edit
    @marketing_contact = MarketingContact.find(params[:id])
  end

  # POST /marketing_contacts
  # POST /marketing_contacts.xml
  def create
    @marketing_contact = MarketingContact.new(params[:marketing_contact])

    respond_to do |format|
      if @marketing_contact.save
        format.html { redirect_to(@marketing_contact, :notice => 'Marketing contact was successfully created.') }
        format.xml  { render :xml => @marketing_contact, :status => :created, :location => @marketing_contact }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @marketing_contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /marketing_contacts/1
  # PUT /marketing_contacts/1.xml
  def update
    @marketing_contact = MarketingContact.find(params[:id])

    respond_to do |format|
      if @marketing_contact.update_attributes(params[:marketing_contact])
        format.html { redirect_to(@marketing_contact, :notice => 'Marketing contact was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @marketing_contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /marketing_contacts/1
  # DELETE /marketing_contacts/1.xml
  def destroy
    @marketing_contact = MarketingContact.find(params[:id])
    @marketing_contact.destroy

    respond_to do |format|
      format.html { redirect_to(marketing_contacts_url) }
      format.xml  { head :ok }
    end
  end
end

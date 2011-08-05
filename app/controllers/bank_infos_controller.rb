class BankInfosController < ApplicationController
  # GET /bank_infos
  # GET /bank_infos.xml
  def index
    @bank_infos = BankInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bank_infos }
    end
  end

  # GET /bank_infos/1
  # GET /bank_infos/1.xml
  def show
    @bank_info = BankInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bank_info }
    end
  end

  # GET /bank_infos/new
  # GET /bank_infos/new.xml
  def new
    @bank_info = BankInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bank_info }
    end
  end

  # GET /bank_infos/1/edit
  def edit
    @bank_info = BankInfo.find(params[:id])
  end

  # POST /bank_infos
  # POST /bank_infos.xml
  def create
    @bank_info = BankInfo.new(params[:bank_info])

    respond_to do |format|
      if @bank_info.save
        format.html { redirect_to(@bank_info, :notice => 'Bank info was successfully created.') }
        format.xml  { render :xml => @bank_info, :status => :created, :location => @bank_info }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bank_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bank_infos/1
  # PUT /bank_infos/1.xml
  def update
    @bank_info = BankInfo.find(params[:id])

    respond_to do |format|
      if @bank_info.update_attributes(params[:bank_info])
        format.html { redirect_to(@bank_info, :notice => 'Bank info was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bank_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bank_infos/1
  # DELETE /bank_infos/1.xml
  def destroy
    @bank_info = BankInfo.find(params[:id])
    @bank_info.destroy

    respond_to do |format|
      format.html { redirect_to(bank_infos_url) }
      format.xml  { head :ok }
    end
  end
end

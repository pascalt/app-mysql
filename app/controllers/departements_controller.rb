class DepartementsController < ApplicationController
  # GET /departements
  # GET /departements.xml
  def index
    @region = Region.find_by_id(params[:region_id])
    @departements = @region ? @region.departements : Departement.all
    #@departements = Departement.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @departements }
    end
  end

  # GET /departements/1
  # GET /departements/1.xml
  def show
    @departement = Departement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @departement }
    end
  end

  # GET /departements/new
  # GET /departements/new.xml
  def new
    @departement = Departement.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @departement }
    end
  end

  # GET /departements/1/edit
  def edit
    @departement = Departement.find(params[:id])
  end

  # POST /departements
  # POST /departements.xml
  def create
    @departement = Departement.new(params[:departement])

    respond_to do |format|
      if @departement.save
        format.html { redirect_to(@departement, :notice => 'Departement was successfully created.') }
        format.xml  { render :xml => @departement, :status => :created, :location => @departement }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @departement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /departements/1
  # PUT /departements/1.xml
  def update
    @departement = Departement.find(params[:id])

    respond_to do |format|
      if @departement.update_attributes(params[:departement])
        format.html { redirect_to(@departement, :notice => 'Departement was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @departement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /departements/1
  # DELETE /departements/1.xml
  def destroy
    @departement = Departement.find(params[:id])
    @departement.destroy

    respond_to do |format|
      format.html { redirect_to(departements_url) }
      format.xml  { head :ok }
    end
  end
end

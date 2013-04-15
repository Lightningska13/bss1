class SampleCatsController < ApplicationController
  # GET /sample_cats
  # GET /sample_cats.json
  def index
    @sample_cats = SampleCat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @sample_cats }
    end
  end

  # GET /sample_cats/1
  # GET /sample_cats/1.json
  def show
    @sample_cat = SampleCat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @sample_cat }
    end
  end

  # GET /sample_cats/new
  # GET /sample_cats/new.json
  def new
    @sample_cat = SampleCat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @sample_cat }
    end
  end

  # GET /sample_cats/1/edit
  def edit
    @sample_cat = SampleCat.find(params[:id])
  end

  # POST /sample_cats
  # POST /sample_cats.json
  def create
    @sample_cat = SampleCat.new(params[:sample_cat])

    respond_to do |format|
      if @sample_cat.save
        format.html { redirect_to @sample_cat, :notice => 'Sample cat was successfully created.' }
        format.json { render :json => @sample_cat, :status => :created, :location => @sample_cat }
      else
        format.html { render :action => "new" }
        format.json { render :json => @sample_cat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sample_cats/1
  # PUT /sample_cats/1.json
  def update
    @sample_cat = SampleCat.find(params[:id])

    respond_to do |format|
      if @sample_cat.update_attributes(params[:sample_cat])
        format.html { redirect_to @sample_cat, :notice => 'Sample cat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @sample_cat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sample_cats/1
  # DELETE /sample_cats/1.json
  def destroy
    @sample_cat = SampleCat.find(params[:id])
    @sample_cat.destroy

    respond_to do |format|
      format.html { redirect_to sample_cats_url }
      format.json { head :no_content }
    end
  end
end

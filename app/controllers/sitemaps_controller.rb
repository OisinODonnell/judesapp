class SitemapsController < ApplicationController
  # GET /sitemaps
  # GET /sitemaps.json
  def index
    @sitemaps = Sitemap.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sitemaps }
    end
  end

  # GET /sitemaps/1
  # GET /sitemaps/1.json
  def show
    @sitemap = Sitemap.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sitemap }
    end
  end

  # GET /sitemaps/new
  # GET /sitemaps/new.json
  def new
    @sitemap = Sitemap.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sitemap }
    end
  end

  # GET /sitemaps/1/edit
  def edit
    @sitemap = Sitemap.find(params[:id])
  end

  # POST /sitemaps
  # POST /sitemaps.json
  def create
    @sitemap = Sitemap.new(sitemap_params)

    respond_to do |format|
      if @sitemap.save
        format.html { redirect_to @sitemap, notice: 'Sitemap was successfully created.' }
        format.json { render json: @sitemap, status: :created, location: @sitemap }
      else
        format.html { render action: "new" }
        format.json { render json: @sitemap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sitemaps/1
  # PATCH/PUT /sitemaps/1.json
  def update
    @sitemap = Sitemap.find(params[:id])

    respond_to do |format|
      if @sitemap.update_attributes(sitemap_params)
        format.html { redirect_to @sitemap, notice: 'Sitemap was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sitemap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sitemaps/1
  # DELETE /sitemaps/1.json
  def destroy
    @sitemap = Sitemap.find(params[:id])
    @sitemap.destroy

    respond_to do |format|
      format.html { redirect_to sitemaps_url }
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def sitemap_params
      params.require(:sitemap).permit(:description, :link, :url)
    end
end

class ForumSectionsController < ApplicationController
  # GET /forum_sections
  # GET /forum_sections.json
  def index
    @forum_sections = ForumSection.all
    


    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @forum_sections }
    end
  end

  # GET /forum_sections/1
  # GET /forum_sections/1.json
  def show
    @forum_section = ForumSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @forum_section }
    end
  end

  # GET /forum_sections/new
  # GET /forum_sections/new.json
  def new
    @forum_section = ForumSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @forum_section }
    end
  end

  # GET /forum_sections/1/edit
  def edit
    @forum_section = ForumSection.find(params[:id])
  end

  # POST /forum_sections
  # POST /forum_sections.json
  def create
    @forum_section = ForumSection.new(params[:forum_section])

    respond_to do |format|
      if @forum_section.save
        format.html { redirect_to @forum_section, :notice => 'Forum section was successfully created.' }
        format.json { render :json => @forum_section, :status => :created, :location => @forum_section }
      else
        format.html { render :action => "new" }
        format.json { render :json => @forum_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /forum_sections/1
  # PUT /forum_sections/1.json
  def update
    @forum_section = ForumSection.find(params[:id])

    respond_to do |format|
      if @forum_section.update_attributes(params[:forum_section])
        format.html { redirect_to @forum_section, :notice => 'Forum section was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @forum_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /forum_sections/1
  # DELETE /forum_sections/1.json
  def destroy
    @forum_section = ForumSection.find(params[:id])
    @forum_section.destroy

    respond_to do |format|
      format.html { redirect_to forum_sections_url }
      format.json { head :no_content }
    end
  end
end

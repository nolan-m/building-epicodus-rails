class SectionsController < ApplicationController
  def index
    @sections = Section.all
    render('sections/index.html.erb')
  end

  def new
    @section = Section.new
    render('sections/index.html.erb')
  end

  def create
    params[:section][:slug] = params[:section][:name].parameterize
    @section = Section.new(params[:section])
    if @section.save
      redirect_to(:back)
    else
      render('sections/index.html.erb')
    end
  end

  def show
    @section = Section.find_by(:slug => params[:slug])
    render('sections/show.html.erb')
  end

  def edit
    @section = Section.find(params[:slug])
    render('sections/show.html.erb')
  end

  def update
    @section = Section.find(params[:slug])
    if @section.update(params[:section])
      render('sections/index.html.erb')
    else
      render('sections/show.html.erb')
    end
  end

  def destroy
    @section = Section.find(params[:slug])
    @section.destroy
    render('sections/index.html.erb')
  end
end
